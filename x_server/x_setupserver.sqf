// by Xeno
#include "x_setup.sqf"
if (!isServer) exitWith {};

_pos = [0,0,0];

#ifdef __OA__
if !(__TTVer) then {
	// very secret extra thingie..., TODO: add for TT
	_shield = "ProtectionZone_Ep1" createVehicleLocal (position FLAG_BASE);
	_shield setPos (position FLAG_BASE);
	_shield setDir -211;
	_shield setObjectTexture [0,"#(argb,8,8,3)color(0,0,0,0,ca)"];
	_trig = createTrigger["EmptyDetector" ,position FLAG_BASE];
	_trig setTriggerArea [25, 25, 0, false];
	_trig setTriggerActivation [d_enemy_side, "PRESENT", true];
	_trig setTriggerStatements["this", "thislist call {{_x setDamage 1} forEach _this}", ""];
};
#endif

#ifndef __OA__
d_island_center = getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition");
#else
// workaround for Takistan, the island center of Takistan is located at the airfield in the south ^^
d_island_center = [6481.51,6506.95,300];
#endif
d_island_x_max = (d_island_center select 0) * 2;
d_island_y_max = (d_island_center select 1) * 2;

d_last_bonus_vec = "";

[_pos, [0, 0, 0, false], ["NONE", "PRESENT", true], ["d_side_mission_resolved", "0 = [] spawn XSideMissionResolved", ""]] call XfCreateTrigger;

// check mr
__cppfln(x_checktransport,x_server\x_checktransport.sqf);

#ifdef __TT__
__cppfln(x_checktransport2,x_server\x_checktransport2.sqf);
#endif

if (!AmmoBoxHandling) then {
	execfsm "fsms\Boxhandling.fsm";
} else {
	d_check_boxes = [];
	execVM "x_server\x_boxhandling_old.sqf";
};

#ifdef __TT__
execfsm "fsms\TTPoints.fsm";
#endif

if (d_with_ai) then {execVM "x_server\x_delaiserv.sqf"};

// start air AI (KI=AI) after some time
#ifndef __TT__
if (d_SidemissionsOnly == 1) then {
	[] spawn {
		sleep 924;
		["KA",d_number_attack_choppers] execVM "x_server\x_airki.sqf";
		sleep 801.123;
		["SU",d_number_attack_planes] execVM "x_server\x_airki.sqf";
	};
};
#endif

[] spawn {
	private ["_waittime","_num_p"];
	sleep 20;
	if (d_SidemissionsOnly == 1) then {
		_waittime = 200 + random 10;
		_num_p = call XPlayersNumber;
		if (_num_p > 0) then {
			{
				if (_num_p <= (_x select 0)) exitWith {
					_waittime = (_x select 1) + random 10;
				}
			} forEach d_time_until_next_sidemission;
		};
		sleep _waittime;
	} else {
		sleep 15;
	};
	
	execVM "x_missions\x_getsidemission.sqf";
};

#ifndef __TT__
if (d_with_recapture && d_SidemissionsOnly == 1) then {execFSM "fsms\Recapture.fsm"};
#endif

#ifndef __TT__
if (!d_no_sabotage && (isNil "d_with_carrier") && d_SidemissionsOnly == 1) then {execFSM "fsms\Infilrate.fsm"};
#endif

#ifndef __TT__
d_air_bonus_vecs = 0;
d_land_bonus_vecs = 0;

{
	_vecclass = toUpper (getText(configFile >> "CfgVehicles" >> _x >> "vehicleClass"));
	if (_vecclass == "AIR") then {
		d_air_bonus_vecs = d_air_bonus_vecs + 1;
	} else {
		d_land_bonus_vecs = d_land_bonus_vecs + 1;
	};
} foreach d_sm_bonus_vehicle_array;

if (isNil "d_with_carrier") then {
	[d_base_array select 0, [d_base_array select 1, d_base_array select 2, d_base_array select 3, true], [d_enemy_side, "PRESENT", true], ["'Man' countType thislist > 0 || 'Tank' countType thislist > 0 || 'Car' countType thislist > 0", "d_kb_logic1 kbTell [d_kb_logic2,d_kb_topic_side,'BaseUnderAtack',true]", ""]] call XfCreateTrigger;
};
#endif

if (d_SidemissionsOnly == 0) then {
	[] spawn {
		waitUntil {__XJIPGetVar(all_sm_res)};
		sleep 10;
		["the_end",true] call XNetSetJIP;
	};
};
