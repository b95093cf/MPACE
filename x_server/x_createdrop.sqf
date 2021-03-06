#include "x_setup.sqf"
#define __announce \
[#para_available,true] call XNetSetJIP;\
{deleteVehicle _x} forEach [_chopper] + _crew;\
deleteMarker #d_drop_marker

#define __del \
{deleteVehicle _x} forEach [_chopper] + _crew;\
deleteMarker #d_drop_marker

#define __exit if (!alive _unit || !alive _chopper || !canMove _chopper) exitWith {[_crew,_chopper] spawn _delete_chop;_may_exit = true}
private ["_player", "_crew", "_chopper", "_grp", "_spos", "_veca", "_wp", "_wp2", "_para", "_doit", "_vehicle", "_starttime", "_unit"];
if (!isServer) exitWith {};

_drop_type = _this select 0;
_drop_pos = _this select 1;
_player = _this select 2;

["d_dropansw", [0,_player]] call XNetCallEvent;

_drop_pos = [_drop_pos select 0, _drop_pos select 1, 120];

["para_available",false] call XNetSetJIP;

_end_pos = call XfGetRanPointOuterAir;
_dstart_pos = call XfGetRanPointOuterAir;

_delete_chop = {
	private ["_crew","_chopper"];
	_crew = _this select 0;
	_chopper = _this select 1;
	["para_available",true] call XNetSetJIP;
	sleep 180 + random 100;
	__del;
};

_grp = [X_Drop_Side] call x_creategroup;
_the_chopper = x_drop_aircraft;
_the_chute = switch (X_Drop_Side) do {
#ifndef __OA__
	case "WEST": {"ParachuteMediumWest"};
	case "GUER": {"ParachuteMediumWest"};
	case "EAST": {"ParachuteMediumEast"};
	case "CIV": {"ParachuteC"};
#else
	case "WEST": {"ParachuteMediumWest_EP1"};
	case "GUER": {"ParachuteMediumWest_EP1"};
	case "EAST": {"ParachuteMediumEast_EP1"};
	case "CIV": {"ParachuteC"};
#endif
};

_spos = [_dstart_pos select 0, _dstart_pos select 1, 300];
_cdir = [_spos, _drop_pos] call XfDirTo;
_veca = [_spos, _cdir, _the_chopper, _grp] call X_fnc_spawnVehicle;
_chopper = _veca select 0;
__addDead(_chopper)
_chopper lock true;
removeAllWeapons _chopper;
["d_drop_marker", [0,0,0],"ICON","ColorBlue",[0.5,0.5],"Air Drop Chopper",0,"Dot"] call XfCreateMarkerGlobal;
sleep 0.1;
_crew = _veca select 1;
{_x setCaptive true} forEach _crew;
_unit = driver _chopper;

_wp = _grp addWaypoint [_drop_pos, 0];
_wp setWaypointBehaviour "CARELESS";
_wp setWaypointSpeed "NORMAL";
_wp setwaypointtype "MOVE";

_wp2 = _grp addWaypoint [_end_pos, 0];
_wp2 setwaypointtype "MOVE";
_wp2 setWaypointBehaviour "CARELESS";
_wp2 setWaypointSpeed "NORMAL";

_chopper flyInHeight 120;
_dist_to_drop = 150;
_may_exit = false;
sleep 12 + random 12;
["d_dropansw", [1,_player]] call XNetCallEvent;
_starttime = time + 300;
while {_chopper distance _drop_pos > 1000} do {
	sleep 3.512;
	"d_drop_marker" setMarkerPos position _chopper;
	__exit;
	if (time > _starttime && (_chopper distance _dstart_pos < 500)) exitWith {__announce;_may_exit = true};
};
if (_may_exit) exitWith {["d_dropansw", [3,_player]] call XNetCallEvent};

["d_dropansw", [2,_player]] call XNetCallEvent;
while {_chopper distance _drop_pos > _dist_to_drop} do {
	sleep 1.012;
	"d_drop_marker" setMarkerPos position _chopper;
	__exit;
	_unit doMove _drop_pos;
};
if (_may_exit) exitWith {["d_dropansw", [3,_player]] call XNetCallEvent};

_unit doMove _end_pos;

[_the_chute,_chopper,_drop_type,_drop_pos,_player] spawn {
	private ["_para","_the_chute","_chopper","_doit","_vehicle","_drop_type","_drop_posx","_player"];
	_the_chute = _this select 0;
	_chopper = _this select 1;
	_drop_type = _this select 2;
	_drop_posx = _this select 3;
	_player = _this select 4;
	_drop_posx = [_drop_posx select 0, _drop_posx select 1, 0];
	
	sleep 1.512;
	_vehicle = objNull;
	_is_ammo = false;
	_para = objNull;
	if (_drop_type isKindOf "ReammoBox") then {
		_is_ammo = true;
		_para = createVehicle [_the_chute, [(getPosASL _chopper) select 0,(getPosASL _chopper) select 1,((position _chopper) select 2)-10], [], 0, "FLY"];
		_para setpos [(getPosASL _chopper) select 0,(getPosASL _chopper) select 1,((position _chopper) select 2) - 10];
	} else {
		_vehicle = createVehicle [_drop_type, [(getPosASL _chopper) select 0,(getPosASL _chopper) select 1,((position _chopper) select 2)-10], [], 0, "NONE"];
		_vehicle setpos [(getPosASL _chopper) select 0,(getPosASL _chopper) select 1,((position _chopper) select 2) - 10];
		_para = createVehicle [_the_chute, [0,0,0], [], 0, "FLY"];
		_para setPos (_vehicle modelToWorld [0,0,2]);
		_vehicle attachTo [_para,[0,0,0]];
		__addDead(_vehicle)
	};
	
	["d_dropansw", [4,_player]] call XNetCallEvent;
	[_vehicle,_drop_posx,d_drop_radius,_drop_type,_para, _is_ammo] execVM "scripts\mando_chute.sqf";
};

_drop_pos = nil;

_starttime = time + 300;

sleep 0.512;

waitUntil {sleep 3.331;"d_drop_marker" setMarkerPos position _chopper;(time > _starttime || !canMove _chopper || _chopper distance _end_pos < 400)};

__announce;
