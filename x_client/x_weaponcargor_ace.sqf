// by Xeno
#include "x_setup.sqf"
private "_vec";
_vec = _this select 0;

#define __awc(wtype,wcount) _vec addWeaponCargo [#wtype,wcount];
#define __amc(mtype,mcount) _vec addMagazineCargo [#mtype,mcount];

if (isNil "x_ranked_weapons") then {
	_x_ranked_weapons_w = [
		[
			// private rifles
			[
				["M16A2",5],["M16A4",5],["MP5A5",5],["ACE_M16A4_Iron",5],["ACE_MP5A4",5],["ACE_UMP45",5],["ACE_FAL_Para",5],["ACE_SA58",5],["ACE_G3A3",5]
			],
			// corporal rifles (gets added to private rifles)
			[
				["M16A2GL",5],["M16A4_GL",5],["M16A4_ACG",5],["M16A4_ACG_GL",5],["ACE_M4A1_GL",5],["ACE_M4A1_GL_SD",5],["ACE_UMP45_SD",5]
			],
			// sergeant rifles (gets added to corporal and private rifles)
			[
				["MP5SD",5],["M4A1",5],["M4A1_HWS_GL",5],["M4A1_HWS_GL_camo",5],["M4A1_RCO_GL",5],["M4A1_Aim",5],["M4A1_Aim_camo",5],
				["ACE_M4A1_ACOG",5],["ACE_M4A1_ACOG_SD",5],["ACE_M4A1_Aim_SD",5],["ACE_M4A1_Eotech",5],["ACE_SOC_M4A1_Aim",5],["ACE_SOC_M4A1_AIM_SD",5],
				["ACE_SOC_M4A1_GL",5],["ACE_SOC_M4A1",5],["ACE_SOC_M4A1_GL_SD",5],["ACE_SOC_M4A1_Eotech",5],["ACE_SOC_M4A1_GL_13",5],["ACE_SOC_M4A1_GL_EOTECH",5],
				["ACE_SOC_M4A1_SD_9",5],["ACE_HK416_D10",5],["ACE_HK416_D14",5],["ACE_HK416_D10_COMPM3",5]
			],
			// lieutenant rifles (gets added to...)
			[
				["M4A1_HWS_GL_SD_Camo",5],["M4A1_AIM_SD_camo",5],["M8_carbine",5],["M8_carbineGL",5],["M8_compact",1],["ACE_SOC_M4A1_SHORTDOT",5],["ACE_SOC_M4A1_SHORTDOT_SD",5],
				["ACE_SOC_M4A1_RCO_GL",5],["ACE_SOC_M4A1_GL_AIMPOINT",5],["ACE_HK416_D10_SD",5],["ACE_HK416_D14_SD",5],["ACE_HK416_D10_COMPM3_SD",5],["ACE_HK416_D14_COMPM3",5],
				["ACE_HK416_D14_COMPM3_M320",5]
			],
			// captain rifles (gets added...)
			[
				["G36a",5],["G36c",5],["G36k",5],["G36_C_SD_eotech",5]
			],
			// major rifles (gets...)
			[
			],
			// colonel rifles (...)
			[
			]
		],
		[
			// private sniper rifles
			[
			],
			// corporal sniper rifles
			[
			],
			// sergeant sniper rifles
			[
				["M24",5],["ACE_G3SG1",5]
			],
			// lieutenant sniper rifles
			[
				["M4SPR",5],["DMR",5],["ACE_M4SPR_SD",5]
			],
			// captain sniper rifles
			[
				["ACE_M110",5],["ACE_M110_SD",5]
			],
			// major sniper rifles
			[
				["M40A3",5],["M8_sharpshooter",5]
			],
			// colonel sniper rifles
			[
				["M107",5],["ACE_M109",5],["ACE_TAC50",5],["ACE_TAC50_SD",5]
			]
		],
		[
			// private MG
			[
			],
			// corporal MG
			[
				["M240",5]
			],
			// sergeant MG
			[
				["M249",5],["ACE_M249Para",5]
			],
			// lieutenant MG
			[
				["M8_SAW",5],["Mk_48",5]
			],
			// captain MG
			[
				["MG36",5]
			],
			// major MG
			[
				["ACE_M240G_M145",5],["ACE_M249Para_M145",5]
			],
			// colonel MG
			[
			]
		],
		[
			// private launchers
			[
				["M136",2],["ACE_M72A2",2]
			],
			// corporal launchers
			[
				["STINGER",2]
			],
			// sergeant launchers
			[
				["SMAW",5]
			],
			// lieutenant launchers
			[
			],
			// captain launchers
			[
			],
			// major launchers
			[
			],
			// colonel launchers
			[
				["JAVELIN",2]
			]
		],
		[
			// private pistols
			[
				["M9",5]
			],
			// corporal pistols
			[
				["M9SD",5],["ACE_P226",5]
			],
			// sergeant pistols
			[
				["Colt1911",5],["ACE_Flaregun",5]
			],
			// lieutenant pistols
			[
				["ACE_Glock17",5]
			],
			// captain pistols
			[
				["ACE_Glock18",5]
			],
			// major pistols
			[
			],
			// colonel pistols
			[
			]
		]
	];
	_x_ranked_weapons_e = [
		[
			// private rifles
			[
				["AK_74",5],["AKS_74_U",5],["AK_107_kobra",5],["AK_47_M",5],["ACE_SKS",5],["ACE_AK74M",5],["ACE_AKS74P",5],["ACE_AK105",5],["ACE_AK103",5],
				["ACE_AK104",5],["ACE_Val",5],["ACE_OC14",5],["ACE_gr1",5]
			],
			// corporal rifles (gets added to private rifles)
			[
				["AK_74_GL",5],["AK_107_GL_kobra",5],["Bizon",5],["bizon_silenced",5],["ACE_AK74M_Kobra",5],["ACE_AK74M_GL",5],["ACE_AK74M_GL_Kobra",5],["ACE_AKS74P_Kobra",5],
				["ACE_AK105_Kobra",5],["ACE_AK103_Kobra",5],["ACE_Val_Kobra",5],["ACE_oc14gl",5],["AKS_74_kobra",5]
			],
			// sergeant rifles (gets added to corporal and private rifles)
			[
				["AKS_74_UN_kobra",5],["AK_47_S",5],["Saiga12K",5],["VSS_vintorez",5],["ACE_AK74M_1P29",5],["ACE_AK74M_GL_1P29",5],["ACE_AKS74P_1P29",5],["ACE_AKS74P_GL",5],
				["ACE_AKS74P_GL_Kobra",5],["ACE_AK103_GL",5],["ACE_AK103_GL_Kobra",5],["ACE_AK104_Kobra",5],["ACE_oc14sp",5],["ACE_oc14sd",5],["ACE_gr1sp",5],["ACE_gr1sd",5]
			],
			// lieutenant rifles (gets added to...)
			[
				["AK_107_GL_pso",5],["AK_107_pso",5],["AKS_74_pso",5],["ACE_AK74M_PSO",5],["ACE_AK74M_GL_PSO",5],["ACE_AKS74P_PSO",5],["ACE_AKS74P_GL_1P29",5],["ACE_AKS74P_GL_PSO",5],
				["ACE_AK105_1P29",5],["ACE_AK105_PSO",5],["ACE_AK103_1P29",5],["ACE_AK103_PSO",5],["ACE_AK103_GL_1P29",5],["ACE_AK103_GL_PSO",5],["ACE_AK104_1P29",5],["ACE_AK104_PSO",5],
				["ACE_Val_PSO",5],["ACE_oc14sdsp",5],["ACE_gr1sdsp",5]
			],
			// captain rifles (gets added...)
			[
			],
			// major rifles (gets...)
			[
			],
			// colonel rifles (...)
			[
			]
		],
		[
			// private sniper rifles
			[
			],
			// corporal sniper rifles
			[
			],
			// sergeant sniper rifles
			[
			],
			// lieutenant sniper rifles
			[
			],
			// captain sniper rifles
			[
				["SVD",5],["SVD_CAMO",5]
			],
			// major sniper rifles
			[
			],
			// colonel sniper rifles
			[
				["KSVK",5]
			]
		],
		[
			// private MG
			[
			],
			// corporal MG
			[
				["RPK_74",5],["ACE_RPK74M",5]
			],
			// sergeant MG
			[
				["PK",5],["Pecheneg",5]
			],
			// lieutenant MG
			[
				["ACE_RPK74M_1P29",5]
			],
			// captain MG
			[
			],
			// major MG
			[
			],
			// colonel MG
			[
			]
		],
		[
			// private launchers
			[
				["RPG7V",5],["ACE_RPG7V_PGO7",5]
			],
			// corporal launchers
			[
				["STRELA",5],["RPG18",5],["ACE_RPG22",5],["ACE_RPG27",5]
			],
			// sergeant launchers
			[
				["Igla",5],["ACE_RPG29",5]
			],
			// lieutenant launchers
			[
			],
			// captain launchers
			[
			],
			// major launchers
			[
			],
			// colonel launchers
			[
				["MetisLauncher",2]
			]
		],
		[
			// private pistols
			[
				["MakarovSD",5]
			],
			// corporal pistols
			[
				["Makarov",5]
			],
			// sergeant pistols
			[
				["ACE_TT",5]
			],
			// lieutenant pistols
			[
				["ACE_Scorpion",5]
			],
			// captain pistols
			[
			],
			// major pistols
			[
			],
			// colonel pistols
			[
			]
		]
	];

	{d_misc_store setVariable [_x,["ACE_WIRECUTTER","ACE_RANGEFINDER_OD","ACE_KESTREL4500","ACE_SPOTTINGSCOPE"]]} forEach ["PRIVATE","CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL"];
	{d_misc_store setVariable [_x,["ACE_Rucksack_MOLLE_Green","ACE_Rucksack_MOLLE_Brown","ACE_Rucksack_MOLLE_Wood","ACE_Rucksack_MOLLE_ACU","ACE_Rucksack_MOLLE_WMARPAT","ACE_Rucksack_MOLLE_DMARPAT",
	"ACE_Rucksack_MOLLE_Green_Medic","ACE_Rucksack_MOLLE_Brown_Medic","ACE_Rucksack_MOLLE_ACU_Medic","ACE_Rucksack_MOLLE_WMARPAT_Medic","ACE_Rucksack_MOLLE_DMARPAT_Medic","ACE_VTAC_RUSH72",
	"ACE_VTAC_RUSH72_ACU","ACE_CharliePack","ACE_CharliePack_WMARPAT","ACE_CharliePack_ACU","ACE_CharliePack_ACU_Medic","ACE_FAST_PackEDC","ACE_Combat_Pack","ACE_Rucksack_RD90","ACE_Rucksack_RD91",
	"ACE_Rucksack_RD92","ACE_Rucksack_RD54","ACE_Rucksack_RD99","ACE_Rucksack_EAST","ACE_Rucksack_EAST_Medic","ACE_ANPRC77","ACE_PRC119","ACE_PRC119_MAR","ACE_PRC119_ACU","ACE_P159_RD90",
	"ACE_P159_RD54","ACE_P159_RD99","ACE_BackPack"]} forEach ["PRIVATE","CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL"];
	
	{
		for "_i" from 0 to (count _x) - 1 do {
			_typear = _x select _i;
			if (count _typear > 0) then {
				_rank = switch (_i) do {
					case 0: {
						{
							_ar = d_misc_store getVariable _x;
							{_ar set [count _ar, toUpper(_x select 0)]} forEach _typear;
						} forEach ["PRIVATE","CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL"];
					};
					case 1: {
						{
							_ar = d_misc_store getVariable _x;
							{_ar set [count _ar, toUpper(_x select 0)]} forEach _typear;
						} forEach ["CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL"];
					};
					case 2: {
						{
							_ar = d_misc_store getVariable _x;
							{_ar set [count _ar, toUpper(_x select 0)]} forEach _typear;
						} forEach ["SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL"];
					};
					case 3: {
						{
							_ar = d_misc_store getVariable _x;
							{_ar set [count _ar, toUpper(_x select 0)]} forEach _typear;
						} forEach ["LIEUTENANT","CAPTAIN","MAJOR","COLONEL"];
					};
					case 4: {
						{
							_ar = d_misc_store getVariable _x;
							{_ar set [count _ar, toUpper(_x select 0)]} forEach _typear;
						} forEach ["CAPTAIN","MAJOR","COLONEL"];
					};
					case 5: {
						{
							_ar = d_misc_store getVariable _x;
							{_ar set [count _ar, toUpper(_x select 0)]} forEach _typear;
						} forEach ["MAJOR","COLONEL"];
					};
					case 6: {
						_ar = d_misc_store getVariable "COLONEL";
						{_ar set [count _ar, toUpper(_x select 0)]} forEach _typear;
					};
				};
			};
		};
	} forEach (_x_ranked_weapons_w + _x_ranked_weapons_e);
	
	x_ranked_weapons = if (d_player_faction in ["USMC", "CDF", "ACE_USARMY","ACE_BLUFOR_USARMY","ACE_BLUFOR_USMC_Desert"]) then {_x_ranked_weapons_w} else {_x_ranked_weapons_e};
	_x_ranked_weapons_w = nil;
	_x_ranked_weapons_e = nil;
	
	execFSM "fsms\LimitWeaponsRanked.fsm";
};

[_vec] spawn {
	private ["_vec", "_old_rank", "_index", "_weapons", "_i", "_rk"];
	_vec = _this select 0;
	_old_rank = "";
	while {!isNull _vec && alive _vec} do {
		if (_old_rank != rank player) then {
			clearMagazineCargo _vec;
			clearWeaponCargo _vec;
			_old_rank = rank player;
			_index = _old_rank call XGetRankIndex;
			if (d_player_faction in ["USMC", "CDF", "ACE_USARMY"]) then {
				{
					_weapons = _x;
					for "_i" from 0 to _index do {
						_rk = _weapons select _i;
						{_vec addweaponcargo _x} forEach _rk;
					};
				} forEach x_ranked_weapons;
				
				__awc(ACE_ParachutePack,50)
				__awc(Laserdesignator,1)
				__awc(Binocular,1)
				__awc(NVGoggles,1)
				__awc(ACE_SpottingScope,1)
				__awc(ACE_WireCutter,1)
				__awc(ACE_DAGR,1)
				__awc(ACE_GlassesTactical,1)
				__awc(ACE_GlassesLHD_glasses,1)
				__awc(ACE_GlassesGasMask_US,1)
				__awc(ACE_GlassesBalaklava,1)
				__awc(ACE_Rangefinder_OD,1)
				__awc(ACE_Kestrel4500,1)
				__awc(ACE_Earplugs,1)
				__awc(ACE_Map_Tools,1)
				__awc(ACE_KeyCuffs,1)
				
				__amc(ACE_Battery_Rangefinder,50)
				__amc(HandGrenade_West,50)
				__amc(HandGrenade_Stone,50)
				__amc(Smokeshell,50)
				__amc(Smokeshellred,50)
				__amc(Smokeshellgreen,50)
				__amc(SmokeShellYellow,50)
				__amc(SmokeShellOrange,50)
				__amc(SmokeShellPurple,50)
				
				__amc(ace_flashbang,50)
				__amc(ace_m84,50)
				__amc(ace_m7a3,50)
				__amc(ace_m34,50)
				__amc(ACE_IRStrobe,50)
				__amc(ACE_M86PDM,50)
				__amc(ACE_M2SLAM_M,50)
				
				__amc(30Rnd_9x19_MP5,50)
				__amc(30Rnd_9x19_MP5SD,50)
				__amc(ACE_25Rnd_1143x23_B_UMP45,50)
				__amc(7Rnd_45ACP_1911,50)
				__amc(15Rnd_9x19_M9,50)
				__amc(15Rnd_9x19_M9SD,50)
				__amc(ACE_33Rnd_9x19_G18,50)
				__amc(ACE_17Rnd_9x19_G17,50)
				__amc(ACE_15Rnd_9x19_P226,50)
				__amc(20Rnd_556x45_Stanag,50)
				__amc(30Rnd_556x45_Stanag,50)
				__amc(ACE_30Rnd_556x45_T_Stanag,50)
				__amc(30Rnd_556x45_StanagSD,50)
				__amc(ACE_30Rnd_556x45_SB_Stanag,50)
				__amc(ACE_20Rnd_762x51_B_FAL,50)
				__amc(ACE_30Rnd_762x51_B_FAL,50)
				__amc(30Rnd_556x45_G36,50)
				__amc(ACE_20Rnd_762x51_B_G3,50)
				__amc(200Rnd_556x45_M249,50)
				__amc(ACE_200Rnd_556x45_T_M249,50)
				__amc(100Rnd_556x45_BetaCMag,50)
				__amc(8Rnd_B_Beneli_74Slug,50)
				__amc(ACE_8Rnd_12Ga_Slug,50)
				__amc(ACE_8Rnd_12Ga_Buck00,50)
				__amc(ACE_9Rnd_12Ga_Slug,50)
				__amc(ACE_9Rnd_12Ga_Buck00,50)
				__amc(5Rnd_762x51_M24,50)
				__amc(ACE_5Rnd_762x51_T_M24,50)
				__amc(20Rnd_762x51_DMR,50)
				__amc(ACE_20Rnd_762x51_T_DMR,50)
				__amc(10Rnd_127x99_M107,3)
				__amc(ACE_10Rnd_127x99_T_m107,3)
				__amc(ACE_10Rnd_127x99_Raufoss_m107,3)
				__amc(ACE_5Rnd_25x59_HEDP_Barrett,3)
				__amc(ACE_20Rnd_762x51_SB_M110,10)
				__amc(ACE_20Rnd_762x51_S_M110,10)
				__amc(ACE_20Rnd_762x51_T_M110,10)
				__amc(ACE_5Rnd_127x99_B_TAC50,3)
				__amc(ACE_5Rnd_127x99_S_TAC50,3)
				__amc(ACE_5Rnd_127x99_T_TAC50,3)
				__amc(100Rnd_762x51_M240,50)
				__amc(1Rnd_HE_M203,50)
				__amc(ace_1rnd_cs_m203,50)
				__amc(ACE_6Rnd_40mm_M32,50)
				__amc(ACE_6Rnd_CS_M32,50)
				__amc(FlareWhite_M203,50)
				__amc(FlareGreen_M203,50)
				__amc(FlareRed_M203,50)
				__amc(ACE_SSWhite_M203,50)
				__amc(ACE_SSGreen_M203,50)
				__amc(ACE_SSRed_M203,50)
				__amc(ACE_SSYellow_M203,50)
				__amc(1Rnd_SmokeRed_M203,50)
				__amc(1Rnd_SmokeGreen_M203,50)
				__amc(1Rnd_SmokeYellow_M203,50)
				__amc(1Rnd_Smoke_M203,50)
				__amc(ACE_SSWhite_FG,50)
				__amc(ACE_SSRed_FG,50)
				__amc(ACE_SSGreen_FG,50)
				__amc(ACE_SSYellow_FG,50)
				__amc(SMAW_HEAA,3)
				__amc(SMAW_HEDP,3)
				__amc(ACE_SMAW_Spotting,30)
				__amc(Pipebomb,5)
				__amc(Mine,30)
				__amc(ACE_Claymore_M,5)
				__amc(ACE_C4_M,30)
				__amc(ACE_BBetty_M,5)
				__amc(ACE_TripFlare_M,5)
				__amc(Laserbatteries,20)
				__amc(JAVELIN,1)
				__amc(STINGER,2)
				__amc(ACE_Knicklicht_R,50)
				__amc(ACE_Knicklicht_W,50)
				__amc(ACE_Knicklicht_Y,50)
				__amc(ACE_Knicklicht_B,50)
				__amc(ACE_Knicklicht_IR,50)
				__amc(ACE_VS17Panel_M,50)
				__amc(ACE_Rope_M_50,2)
				__amc(ACE_Rope_M_60,2)
				__amc(ACE_Rope_M_90,2)
				__amc(ACE_Rope_M_120,2)
				#ifdef __WOUNDS__
				__amc(ACE_Bandage,50)
				__amc(ACE_Morphine,50)
				__amc(ACE_Epinephrine,50)
				#endif
			} else {
				{
					_weapons = _x;
					for "_i" from 0 to _index do {
						_rk = _weapons select _i;
						{_vec addweaponcargo _x} forEach _rk;
					};
				} forEach x_ranked_weapons;
				
				__awc(ACE_ParachutePack,50)
				__awc(ACE_GlassesSpectacles,1)
				__awc(ACE_GlassesRoundGlasses,1)
				__awc(ACE_GlassesSunglasses,1)
				__awc(ACE_GlassesBlackSun,1)
				__awc(ACE_GlassesBlueSun,1)
				__awc(ACE_GlassesRedSun,1)
				__awc(ACE_GlassesGreenSun,1)
				__awc(ACE_GlassesLHD_glasses,1)
				__awc(ACE_GlassesTactical,1)
				__awc(ACE_GlassesGasMask_RU,1)
				__awc(ACE_GlassesBalaklava,1)
				__awc(ACE_Earplugs,1)
				__awc(ACE_Kestrel4500,1)
				__awc(ACE_Map_Tools,1)
				__awc(ACE_KeyCuffs,1)

				__awc(Binocular,1)
				__awc(NVGoggles,1)
				__awc(ACE_SpottingScope,1)
				__awc(ACE_WireCutter,1)
				
				__amc(ACE_RDG2,50)
				__amc(ACE_RDGM,50)
				__amc(ACE_RG60A,50)
				__amc(ACE_TORCH_C,50)
				__amc(30Rnd_545x39_AK,50)
				__amc(30Rnd_762x39_AK47,50)
				__amc(64Rnd_9x19_Bizon,50)
				__amc(64Rnd_9x19_SD_Bizon,50)
				__amc(8Rnd_B_Saiga12_74Slug,50)
				__amc(10Rnd_9x39_SP5_VSS,50)
				
				__amc(ACE_20Rnd_765x17_vz61,50)
				__amc(ACE_8Rnd_762x25_B_Tokarev,50)
				__amc(ACE_10Rnd_762x39_B_SKS,50)
				__amc(ACE_30Rnd_545x39_T_AK,50)
				__amc(ACE_45Rnd_545x39_B_AK,50)
				__amc(ACE_30Rnd_762x39_T_AK47,50)
				__amc(ACE_30Rnd_762x39_SD_AK47,50)
				
				__amc(ACE_20Rnd_9x39_B_OC14,50)
				
				__amc(75Rnd_545x39_RPK,50)
				__amc(FlareWhite_GP25,50)
				__amc(FlareGreen_GP25,50)
				__amc(FlareRed_GP25,50)
				__amc(FlareYellow_GP25,50)
				__amc(1Rnd_HE_GP25,50)
				__amc(ACE_1Rnd_HE_GP25P,50)
				__amc(ACE_1Rnd_CS_GP25,50)
				__amc(30Rnd_545x39_AKSD,50)
				__amc(100Rnd_762x54_PK,50)
				
				__amc(ACE_75Rnd_545x39_T_RPK,50)
				
				__amc(10Rnd_762x54_SVD,6)
				__amc(ACE_10Rnd_762x54_T_SVD,6)
				__amc(8Rnd_9x18_Makarov,50)
				__amc(8Rnd_9x18_MakarovSD,50)
				__amc(PG7V,3)
				__amc(PG7VR,3)
				__amc(PG7VL,3)
				__amc(ACE_PG7VL_PGO7,3)
				__amc(ACE_PG7VR_PGO7,3)
				__amc(ACE_PG7V_PGO7,3)
				__amc(ACE_OG7_PGO7,3)
				__amc(ACE_RPG29_PG29,3)
				__amc(ACE_RPG29_TBG29,3)
				__amc(OG7,3)
				__amc(AT13,3)
				__amc(RPG18,3)
				__amc(Igla,5)
				__amc(SmokeShellRed,50)
				__amc(SmokeShellGreen,50)
				__amc(SmokeShell,50)
				__amc(HandGrenade_East,50)
				__amc(5Rnd_127x108_KSVK,3)
				__amc(ACE_5Rnd_127x108_T_KSVK,3)
				__amc(Mine,30)
				__amc(Pipebomb,5)
				__amc(ACE_Pomz_M,5)
				__amc(Laserbatteries,20)
				__amc(Strela,2)
				__amc(ACE_Knicklicht_R,50)
				__amc(ACE_Knicklicht_W,50)
				__amc(ACE_Knicklicht_Y,50)
				__amc(ACE_Knicklicht_B,50)
				__amc(ACE_Knicklicht_IR,50)
				__amc(ACE_VS17Panel_M,50)
				__amc(ACE_Rope_M_50,2)
				__amc(ACE_Rope_M_60,2)
				__amc(ACE_Rope_M_90,2)
				__amc(ACE_Rope_M_120,2)
			#ifdef __WOUNDS__
				__amc(ACE_Bandage,50)
				__amc(ACE_Morphine,50)
				__amc(ACE_Epinephrine,50)
			#endif
			};
		};
		sleep 2.32;
	};
};