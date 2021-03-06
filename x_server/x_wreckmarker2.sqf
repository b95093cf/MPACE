// by Xeno
#include "x_setup.sqf"
private ["_vehicle", "_mname", "_sav_pos", "_type_name", "_i", "_element", "_timedelete"];
if (!isServer) exitWith {};
_vehicle = _this;
sleep 5;
#ifndef __TT__
while {_vehicle distance d_wreck_rep > 30 && (_vehicle call XfGetHeight) > 1 && speed _vehicle > 1} do {sleep 2 + random 2};
if (_vehicle distance d_wreck_rep <= 30) exitWith {};
#else
while {_vehicle distance d_wreck_rep > 30 && _vehicle distance d_wreck_rep2 > 30 && (_vehicle call XfGetHeight) > 1 && speed _vehicle > 1} do {sleep 2 + random 2};
if (_vehicle distance d_wreck_rep <= 30 || _vehicle distance d_wreck_rep2 <= 30) exitWith {};
#endif
while {speed _vehicle > 4} do {sleep 1.532 + random 1.2};
sleep 0.01;
if ((vectorUp _vehicle) select 2 < 0) then {_vehicle setVectorUp [0,0,1]};
while {speed _vehicle > 4} do {sleep 1.532 + random 1.2};
_mname = str(_vehicle);
_sav_pos = [getPosASL _vehicle select 0,getPosASL _vehicle select 1,position _vehicle select 2];
_type_name = [typeOf _vehicle,0] call XfGetDisplayName;
_d_wreck_marker = __XJIPGetVar(d_wreck_marker);
if (__TTVer) then {
	_pside = switch (_vehicle getVariable "D_VEC_SIDE") do {case 1: {east};case 2: {west};default {civilian};};
	["d_w_m_c", [_mname,_sav_pos,_type_name,_pside]] call XNetCallEvent;
	_d_wreck_marker set [count _d_wreck_marker, [_mname,_sav_pos,_type_name,_pside]];
} else {
	["d_w_m_c", [_mname,_sav_pos,_type_name]] call XNetCallEvent;
	_d_wreck_marker set [count _d_wreck_marker, [_mname,_sav_pos,_type_name]];
};
["d_wreck_marker",_d_wreck_marker] call XNetSetJIP;
_timedelete = if (d_WreckDeleteTime != -1) then {time + d_WreckDeleteTime} else {time + 1e+011};
while {!isNull _vehicle && _vehicle distance _sav_pos < 30 && time < _timedelete} do {sleep 3.321 + random 2.2};
_d_wreck_marker = __XJIPGetVar(d_wreck_marker);
for "_i" from 0 to (count _d_wreck_marker - 1) do {
	_element = _d_wreck_marker select _i;
	if ((_element select 0) == _mname && str(_element select 1) == str(_sav_pos)) exitWith {_d_wreck_marker set [_i, -1]};
};
_d_wreck_marker = _d_wreck_marker - [-1];
["d_wreck_marker",_d_wreck_marker] call XNetSetJIP;
["d_w_ma",_mname] call XNetCallEvent;
if (time > _timedelete && _vehicle distance _sav_pos < 30) then {
	deleteVehicle _vehicle;
} else {
	_vehicle execVM "x_server\x_wreckmarker2.sqf";
};