#include "x_setup.sqf"
class XD_AdminDialog {
	idd = -1;
	movingEnable = 1;
	onLoad = "uiNamespace setVariable ['D_ADMIN_DLG', _this select 0]";
	objects[] = {};
	class controlsBackground {
		class XD_BackGround : XC_RscText {
			idc = -1;
			type = 0;
			style = 48;
			x = 0;
			y = 0;
			w = 1.93;
			h = 1.35;
			XCTextBlack;
			colorBackground[] = {0,0,0,0};
			text = "\ca\ui\data\ui_mainmenu_background_ca.paa";
			font = "Zeppelin32";
			sizeEx = 0.032;
		};
	};
	class controls {
		class XD_CloseButton: XD_ButtonBase {
			idc = -1;
			text = "Close"; 
			action = "closeDialog 0";
			default = true;
			x = 0.68;
			y = 0.98;
		};
		class XD_Map : XD_RscMapControl {
			idc = 11010;
			colorBackground[] = {0.9, 0.9, 0.9, 0.9};
			x = 0.08;
			y = 0.61;
			w = 0.84;
			h = 0.33;
			showCountourInterval = false;
		};
		class XD_MainCaption : XC_RscText {
			x = 0.12;
			y = 0.05;
			w = 0.25;
			h = 0.1;
			sizeEx = 0.035;
			colorBackground[] = {1, 1, 1, 0};
			colorText[] = {0.643, 0.5742, 0.4102, 1};
			text = "ADMIN DIALOG";
		};
		class Dom2 : XC_RscText {
			x = 0.12;
			y = 0.98;
			w = 0.25;
			h = 0.1;
			sizeEx = 0.035;
			colorBackground[] = {1, 1, 1, 0};
			XCMainCapt;
			text = "Domination! 2";
		};
		class UnitsComboCaption : XC_RscText {
			x = 0.08;
			y = 0.13;
			w = 0.2;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCTextBlack;
			text = "Select player:";
		};
		class UnitsCombo:XD_UIComboBox {
			idc = 1001;
			x = 0.08;
			y = 0.2;
			w = 0.25;
			h = 0.04;
			sizeEx = 0.027;
			onLBSelChanged = "[_this] execVM 'x_client\x_adselchanged.sqf'";
		};
		class InfoText : XC_RscText {
			idc = 1002;
			x = 0.4;
			y = 0.13;
			w = 0.4;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCMainCapt;
			text = "";
		};
		class NameCaption : XC_RscText {
			x = 0.4;
			y = 0.18;
			w = 0.07;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCTextBlack;
			text = "Name:";
		};
		class NameText : XC_RscText {
			idc = 1003;
			x = 0.48;
			y = 0.18;
			w = 0.3;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCMainCapt;
			text = "";
		};
		class UidCaption : XC_RscText {
			x = 0.4;
			y = 0.22;
			w = 0.07;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCTextBlack;
			text = "UID:";
		};
		class UidText : XC_RscText {
			idc = 1004;
			x = 0.48;
			y = 0.22;
			w = 0.3;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCMainCapt;
			text = "";
		};
		class StrNameCaption : XC_RscText {
			x = 0.4;
			y = 0.26;
			w = 0.07;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCTextBlack;
			text = "Unit:";
		};
		class StrNameText : XC_RscText {
			idc = 1005;
			x = 0.48;
			y = 0.26;
			w = 0.3;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCMainCapt;
			text = "";
		};
		class TKCaption : XC_RscText {
			x = 0.4;
			y = 0.3;
			w = 0.07;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCTextBlack;
			text = "TKs:";
		};
		class TKText : XC_RscText {
			idc = 1006;
			x = 0.48;
			y = 0.3;
			w = 0.3;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCMainCapt;
			text = "";
		};
		class ScoreCaption : XC_RscText {
			x = 0.4;
			y = 0.34;
			w = 0.07;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCTextBlack;
			text = "Score:";
		};
		class ScoreText : XC_RscText {
			idc = 1009;
			x = 0.48;
			y = 0.34;
			w = 0.3;
			h = 0.1;
			sizeEx = 0.029;
			colorBackground[] = {1, 1, 1, 0};
			XCMainCapt;
			text = "";
		};
		class ResetTKsButton: XD_ButtonBase {
			idc = 1007;
			text = "Reset TKs"; 
			action = "['d_ad_deltk', d_a_d_cur_uid] call XNetCallEvent;((uiNamespace getVariable 'D_ADMIN_DLG') displayCtrl 1006) ctrlSetText '0';((uiNamespace getVariable 'D_ADMIN_DLG') displayCtrl 1007) ctrlEnable false";
			x = 0.4;
			y = 0.4;
		};
		class KickButton: XD_ButtonBase {
			idc = 1008;
			text = "Kick player"; 
			action = "if (d_a_d_cur_name != d_name_pl) then {serverCommand ('#kick ' + d_a_d_cur_name);d_a_d_p_kicked = true}";
			x = 0.65;
			y = 0.4;
		};
		class SpectateButton: XD_ButtonBase {
			idc = -1;
			text = "Spectating"; 
			action = "closeDialog 0;execVM 'x_client\x_adminspectate.sqf'";
			x = 0.4;
			y = 0.48;
		};
		class BanButton: XD_ButtonBase {
			idc = 1010;
			text = "Ban player"; 
			action = "if (d_a_d_cur_name != d_name_pl) then {serverCommand ('#exec ban ' + d_a_d_cur_name);d_a_d_p_kicked = true}";
			x = 0.65;
			y = 0.48;
		};
	};
};
