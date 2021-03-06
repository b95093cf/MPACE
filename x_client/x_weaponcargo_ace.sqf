// by Xeno
#include "x_setup.sqf"
private "_vec";

#define __awc(wtype,wcount) _vec addWeaponCargo [#wtype,wcount];
#define __amc(mtype,mcount) _vec addMagazineCargo [#mtype,mcount];

_vec = _this select 0;
clearMagazineCargo _vec;
clearWeaponCargo _vec;

if (d_player_faction in ["USMC", "CDF", "ACE_USARMY","ACE_BLUFOR_USARMY","ACE_BLUFOR_USMC_Desert"]) then {
	__awc(ACE_ParachutePack,50)
	__awc(M9,1)
	__awc(M9SD,1)
	__awc(Colt1911,1)
	__awc(ACE_Glock17,1)
	__awc(ACE_Glock18,1)
	__awc(ACE_P226,1)
	__awc(ACE_Flaregun,1)
	__awc(M16A2,1)
	__awc(M16A2GL,1)
	__awc(M16A4,1)
	__awc(M16A4_GL,1)
	__awc(M16A4_ACG,1)
	__awc(M16A4_ACG_GL,1)
	__awc(ACE_M16A4_Iron,1)
	
	__awc(M4A1,1)
	__awc(ACE_M4A1_GL,1)
	__awc(ACE_M4A1_GL_SD,1)
	__awc(M4A1_HWS_GL,1)
	__awc(M4A1_HWS_GL_camo,1)
	__awc(M4A1_HWS_GL_SD_Camo,1)
	__awc(M4A1_RCO_GL,1)
	__awc(M4A1_Aim,1)
	__awc(M4A1_Aim_camo,1)
	__awc(M4A1_AIM_SD_camo,1)
	
	__awc(ACE_SOC_M4A1_Aim,1)
	__awc(ACE_SOC_M4A1_AIM_SD,1)
	__awc(ACE_SOC_M4A1_GL,1)
	__awc(ACE_SOC_M4A1,1)
	__awc(ACE_SOC_M4A1_GL_SD,1)
	__awc(ACE_SOC_M4A1_Eotech,1)
	__awc(ACE_SOC_M4A1_GL_13,1)
	__awc(ACE_SOC_M4A1_GL_EOTECH,1)
	__awc(ACE_SOC_M4A1_SD_9,1)
	__awc(ACE_SOC_M4A1_SHORTDOT,1)
	__awc(ACE_SOC_M4A1_SHORTDOT_SD,1)
	__awc(ACE_SOC_M4A1_RCO_GL,1)
	__awc(ACE_SOC_M4A1_GL_AIMPOINT,1)
	
	__awc(ACE_M4A1_ACOG,1)
	__awc(ACE_M4A1_ACOG_SD,1)
	__awc(ACE_M4A1_Aim_SD,1)
	__awc(ACE_M4A1_Eotech,1)
	
	__awc(ACE_HK416_D10,1)
	__awc(ACE_HK416_D10_SD,1)
	__awc(ACE_HK416_D10_COMPM3,1)
	__awc(ACE_HK416_D10_COMPM3_SD,1)
	__awc(ACE_HK416_D14,1)
	__awc(ACE_HK416_D14_SD,1)
	__awc(ACE_HK416_D14_COMPM3,1)
	__awc(ACE_HK416_D14_COMPM3_M320,1)
	
	__awc(ACE_HK416_D10_M320,1)
	
	__awc(ACE_FAL_Para,1)
	__awc(ACE_SA58,1)
	
	__awc(G36a,1)
	__awc(G36c,1)
	__awc(G36_C_SD_eotech,1)
	__awc(G36k,1)
	
	__awc(ACE_G3A3,1)
	__awc(ACE_G3SG1,1)

	__awc(M1014,1)
	
	__awc(MP5A5,1)
	__awc(MP5SD,1)
	__awc(ACE_MP5A4,1)
	__awc(ACE_UMP45,1)
	__awc(ACE_UMP45_SD,1)
	
	__awc(M8_carbine,1)
	__awc(M8_carbineGL,1)
	__awc(M8_compact,1)
	
	__awc(MG36,1)
	__awc(Mk_48,1)
	__awc(M240,1)
	__awc(ACE_M240G_M145,1)
	__awc(ACE_M60,1)
	__awc(M249,1)
	__awc(ACE_M249Para,1)
	__awc(ACE_M249Para_M145,1)
	__awc(M8_SAW,1)
	
	__awc(M24,1)
	__awc(DMR,1)
	__awc(M107,1)
	__awc(M40A3,1)
	__awc(M4SPR,1)
	__awc(ACE_M4SPR_SD,1)
	__awc(M8_sharpshooter,1)
	__awc(ACE_M109,1)
	__awc(ACE_M110,1)
	__awc(ACE_M110_SD,1)
	__awc(ACE_TAC50,1)
	__awc(ACE_TAC50_SD,1)
	
	__awc(M136,1)
	__awc(ACE_M72A2,1)
	__awc(SMAW,1)
	
	__awc(ACE_M32,1)
	__awc(ACE_M79,1)

	__awc(ACE_GlassesSpectacles,1)
	__awc(ACE_GlassesRoundGlasses,1)
	__awc(ACE_GlassesSunglasses,1)
	__awc(ACE_GlassesBlackSun,1)
	__awc(ACE_GlassesBlueSun,1)
	__awc(ACE_GlassesRedSun,1)
	__awc(ACE_GlassesGreenSun,1)
	__awc(ACE_GlassesLHD_glasses,1)
	__awc(ACE_GlassesTactical,1)
	__awc(ACE_GlassesGasMask_US,1)
	__awc(ACE_GlassesBalaklava,1)
	__awc(ACE_Earplugs,1)
	__awc(ACE_Kestrel4500,1)
	__awc(ACE_Map_Tools,1)
	__awc(ACE_KeyCuffs,1)
	
	__awc(Laserdesignator,1)
	__awc(ACE_Rangefinder_OD,1)
	__awc(Binocular,1)
	__awc(NVGoggles,1)
	__awc(ACE_SpottingScope,1)
	__awc(ACE_WireCutter,1)
	__awc(ACE_DAGR,1)
	__awc(JAVELIN,1)
	__awc(STINGER,1)
	
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
	__amc(ACE_C4_M,5)
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
	__awc(ACE_ParachutePack,50)
	__awc(AK_107_kobra,1)
	__awc(AK_107_GL_kobra,1)
	__awc(AK_107_GL_pso,1)
	__awc(AK_107_pso,1)
	__awc(AK_74,1)
	__awc(AK_74_GL,1)
	__awc(AK_47_M,1)
	__awc(AK_47_S,1)
	__awc(AKS_74_kobra,1)
	__awc(AKS_74_pso,1)
	__awc(AKS_74_U,1)
	__awc(AKS_74_UN_kobra,1)
	__awc(Bizon,1)
	__awc(bizon_silenced,1)
	__awc(Saiga12K,1)
	__awc(VSS_vintorez,1)
	
	__awc(ACE_SKS,1)
	__awc(ACE_TT,1)
	__awc(ACE_Scorpion,1)
	
	__awc(ACE_AK74M,1)
	__awc(ACE_AK74M_Kobra,1)
	__awc(ACE_AK74M_1P29,1)
	__awc(ACE_AK74M_PSO,1)
	__awc(ACE_AK74M_GL,1)
	__awc(ACE_AK74M_GL_Kobra,1)
	__awc(ACE_AK74M_GL_1P29,1)
	__awc(ACE_AK74M_GL_PSO,1)

	__awc(ACE_AKS74P,1)
	__awc(ACE_AKS74P_Kobra,1)
	__awc(ACE_AKS74P_1P29,1)
	__awc(ACE_AKS74P_PSO,1)
	__awc(ACE_AKS74P_GL,1)
	__awc(ACE_AKS74P_GL_Kobra,1)
	__awc(ACE_AKS74P_GL_1P29,1)
	__awc(ACE_AKS74P_GL_PSO,1)

	__awc(ACE_AK105,1)
	__awc(ACE_AK105_Kobra,1)
	__awc(ACE_AK105_1P29,1)
	__awc(ACE_AK105_PSO,1)

	__awc(ACE_AK103,1)
	__awc(ACE_AK103_Kobra,1)
	__awc(ACE_AK103_1P29,1)
	__awc(ACE_AK103_PSO,1)
	__awc(ACE_AK103_GL,1)
	__awc(ACE_AK103_GL_Kobra,1)
	__awc(ACE_AK103_GL_1P29,1)
	__awc(ACE_AK103_GL_PSO,1)

	__awc(ACE_AK104,1)
	__awc(ACE_AK104_Kobra,1)
	__awc(ACE_AK104_1P29,1)
	__awc(ACE_AK104_PSO,1)
	
	__awc(ACE_Val,1)
	__awc(ACE_Val_Kobra,1)
	__awc(ACE_Val_PSO,1)

	__awc(ACE_OC14,1)
	__awc(ACE_oc14sp,1)
	__awc(ACE_oc14gl,1)
	__awc(ACE_oc14glsp,1)
	__awc(ACE_oc14sd,1)
	__awc(ACE_oc14sdsp,1)
	__awc(ACE_gr1,1)
	__awc(ACE_gr1sp,1)
	__awc(ACE_gr1sd,1)
	__awc(ACE_gr1sdsp,1)

	__awc(ACE_RPK74M,1)
	__awc(ACE_RPK74M_1P29,1)
	
	__awc(Pecheneg,1)
	__awc(PK,1)
	__awc(RPK_74,1)
	
	__awc(KSVK,1)
	__awc(SVD,1)
	__awc(SVD_CAMO,1)
	
	__awc(Makarov,1)
	__awc(MakarovSD,1)
	
	__awc(Igla,1)
	__awc(RPG18,1)
	__awc(RPG7V,1)
	__awc(ACE_RPG7V_PGO7,1)
	__awc(ACE_RPG29,1)
	__awc(ACE_RPG22,1)
	__awc(ACE_RPG27,1)
	
	__awc(MetisLauncher,1)
	__awc(STRELA,1)
	
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