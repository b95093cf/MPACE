// by Xeno
#include "x_setup.sqf"

x_sm_pos = [[10362.6,8646.73,0]]; // index: 52,   Shot down chopper
x_sm_type = "normal"; // "convoy"

#ifdef __SMMISSIONS_MARKER__
if (true) exitWith {};
#endif

if (X_Client) then {
	d_current_mission_text = "One of our own choppers was shot down in the northern territories. Find and rescue the crew and bring them back to base. Attention, enemy units are also on the way to the chopper. You have about 15 minutes before they arrive.";
	d_current_mission_resolved_text = "Good job. The crew is back at base.";
};

if (isServer) then {
	[x_sm_pos,time + ((15 * 60) + random 60)]  execVM "x_missions\common\x_sideevac.sqf";
};