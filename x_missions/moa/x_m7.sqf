// by Xeno
private ["_vehicle", "_poss", "_ogroup", "_unit", "_officer", "_endtime"];
#include "x_setup.sqf"

x_sm_pos = [[1513.83,8747.36,0]]; //  destroy scud
x_sm_type = "normal"; // "convoy"

#ifdef __SMMISSIONS_MARKER__
if (true) exitWith {};
#endif

if (X_Client) then {
	d_current_mission_text = "The enemy is preparing a Scud launch near Mulladost to attack a neighbour country. Find the Scud before they can fire the missile, hurry...";
	d_current_mission_resolved_text = "Good job. You have destroyed the Scud!";
};

if (isServer) then {
	__PossAndOther
	_vehicle = "MAZ_543_SCUD_TK_EP1" createvehicle (_poss);
	_vehicle setDir 65;
	_vehicle setFuel 0;
	__GetEGrp(_ogroup)
	_unit = _ogroup createUnit ["TK_Soldier_EP1", _poss, [], 0, "FORM"];
	_unit setVariable ["BIS_noCoreConversations", true];
	__addDead(_unit)
	_unit moveInDriver _vehicle;
	__AddToExtraVec(_unit)
	__AddToExtraVec(_vehicle)
	sleep 2.123;
	["specops", 2, "basic", 2, _poss,100,true] spawn XCreateInf;
	sleep 2.321;
	["shilka", 1, "bmp", 1, "tank", 0, _poss,1,150,true] spawn XCreateArmor;
	
	_endtime = time + 900 + random 100;
	waitUntil {sleep 0.321;!alive _vehicle || time > _endtime};
	if (alive _vehicle) then {
		["d_smsg"] call XNetCallEvent;
		_vehicle action ["ScudLaunch",_vehicle];
	};
	sleep 30;
	if (alive _vehicle) then {
		_vehicle action ["ScudStart",_vehicle];
		d_side_mission_winner = -879;
		d_side_mission_resolved = true;
	};
};