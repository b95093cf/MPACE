// by Xeno
#include "x_setup.sqf"
private ["_ok","_vehicle"];

if (vehicle player != player) exitWith {"Teleport not available in a vehicle !!!" call XfGlobalChat};

if (!isNull (flag player)) exitWith {"You are carrying the flag. Teleport is not possible !!!" call XfGlobalChat};

_is_swimmer = if ((animationState player) in ["aswmpercmstpsnonwnondnon","aswmpercmstpsnonwnondnon_aswmpercmrunsnonwnondf","aswmpercmrunsnonwnondf_aswmpercmstpsnonwnondnon","aswmpercmrunsnonwnondf","aswmpercmsprsnonwnondf","aswmpercmwlksnonwnondf"]) then {true} else {false};
if (_is_swimmer) exitWith {"Teleporting not possible while swimming !!!" call XfGlobalChat};

if (dialog) then {closeDialog 0};

d_beam_target = -1;
if (WithTeleToBase == 0) then {
	tele_dialog = 2; // 0 = respawn, 1 = teleport
} else {
	tele_dialog = 1;
};

if (isNil "x_teleupdate_dlg") then {__cppfln(x_teleupdate_dlg,x_client\x_update_dlg.sqf)};

disableSerialization;

_ok = createDialog "TeleportModule";

_display = __uiGetVar(X_TELE_DIALOG);
_ctrl = _display displayCtrl 100102;
_ctrl ctrlSetText "Teleport";
_ctrl = _display displayCtrl 100111;
_ctrl ctrlSetText "Select Teleport Destination";
if (WithTeleToBase == 1) then {
	_ctrl = _display displayCtrl 100107;
	_ctrl ctrlShow false;
};
_ctrl = _display displayCtrl 100112;
_ctrl ctrlShow false;

x_loop_end = false;

[d_last_telepoint] execVM "x_client\x_update_target.sqf";

[] spawn {
	while {!x_loop_end && alive player && dialog} do {
		if (!x_loop_end && alive player) then {[] spawn x_teleupdate_dlg};
		sleep 1.012;
	};
	if (!alive player) then {closeDialog 0};
};