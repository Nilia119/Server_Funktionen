//
//	Author: [9.JgKp]Nilia
//
//	Description:
//		Script zum Hinzufügen des Limitierten ACE Arsenals auf unserem Server
//
//	Parameter(s):
//                  0: Name des Objektes auf das das Arsenal angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_Arsenal
//		[ this ] call Nilia_fnc_Arsenal;
//
//Arsenal stand 13.08.2022
//if (!isServer) exitWith { hint "Kein Server!" };

//nicht Spawnbar

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Arsenal Konnte nicht Geladen werden" };


[ _obj, 
["hlc_rifle_G36VAG36","hlc_muzzle_SF3P_556","acc_pointer_IR","optic_ERCO_blk_F","hlc_30rnd_556x45_EPR_G36","1Rnd_Smoke_Grenade_shell","hlc_pistol_P226R_357Combat",
"hlc_12Rnd_357SIG_B_P226","BWA3_Uniform_Tropen","ACE_fieldDressing","ACE_EarPlugs","ACE_elasticBandage","ACE_tourniquet","Chemlight_blue","ACE_Chemlight_HiWhite","BWA3_Vest_Leader_Tropen",
"ACE_packingBandage","ACE_quikclot","ACE_epinephrine","ACE_CableTie","ACE_morphine","ACE_Flashlight_XL50","ACE_MapTools","ACE_EntrenchingTool","ACE_Kestrel4500","ItemcTabHCam",
"ACE_splint","hlc_30rnd_556x45_Tracers_G36","hlc_30rnd_556x45_TDIM_G36","BWA3_DM32_Blue","B_IR_Grenade","ACREFR_rt1523g_big_bwmod_tropen","BWA3_Booniehat_Tropen","BWA3_G_Combat_orange",
"ACE_HuntIR_monitor","BWA3_G_Combat_black","NVGogglesB_gry_F","BWA3_G_Combat_clear","BWA3_DM25","hlc_30rnd_556x45_SOST_G36","1Rnd_SmokeBlue_Grenade_shell","ACE_HuntIR_M203",
"1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","BWA3_OpsCore_Tropen_Camera",
"Laserdesignator","ItemMap","ItemcTab","ItemCompass","ItemWatch","hlc_rifle_G36V","ACE_acc_pointer_green","optic_Hamr","BWA3_DM51A1","Laserbatteries","1Rnd_HE_Grenade_shell",
"BWA3_Vest_Grenadier_Tropen","BWA3_AssaultPack_Tropen","ACE_40mm_Flare_white","Rangefinder","ItemAndroid","BWA3_Vest_Medic_Tropen","BWA3_Kitbag_Tropen_Medic","ACE_adenosine",
"ACE_salineIV_250","ACE_salineIV_500","ACE_surgicalKit","ACE_salineIV","hlc_muzzle_KX3_comp","hlc_100rnd_556x45_M_G36","bipod_01_F_blk","BWA3_Vest_MachineGunner_Tropen","BWA3_Carryall_Tropen",
"hlc_100rnd_556x45_Mdim_G36","BWA3_Vest_Rifleman_Tropen","launch_MRAWS_sand_F","MRAWS_HEAT_F","BWA3_PatrolPack_Tropen","MRAWS_HE_F","immersion_pops_poppack","hlc_rifle_PSG1A1_RIS",
"hlc_optic_ATACR_Offset","hlc_20rnd_762x51_Mk316_G3","BWA3_bipod_Harris","ACE_RangeCard","BWA3_Vest_Marksman_Tropen","hlc_20rnd_762x51_T_G3","hlc_20rnd_762x51_IRDim_G3","hlc_20rnd_762x51_b_G3",
"hlc_250Rnd_762x51_mdim_MG3","hlc_100Rnd_762x51_mdim_MG3","ACE_SpareBarrel","hlc_lmg_MG3KWS_100rnd","BWA3_optic_EOTech_sand","hlc_250Rnd_762x51_T_MG3","hlc_50Rnd_762x51_Barrier_MG3",
"hlc_rifle_ACR68_full_black_grip","hlc_muzzle_300blk_KAC","hlc_30rnd_68x43_FMJ","hlc_muzzle_TiRant9","ACE_Chemlight_Shield","ACE_Cellphone","ACE_UAVBattery","ACE_wirecutter",
"ACE_Sandbag_empty","ACE_SpottingScope","ACE_SpraypaintBlack","ACE_SpraypaintRed","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_Tripod","ACE_DAGR","ACE_DefusalKit","ACE_ATragMX",
"optic_Holosight_blk_F","BWA3_optic_CompM2","hlc_optic_HensoldtZO_lo_Docter","mgm_item_redgull","mgm_item_mre","hlc_muzzle_SF3P_762","hlc_muzzle_556NATO_KAC","ACE_HandFlare_White",
"ACE_HandFlare_Red","ACE_HandFlare_Green","ACE_HandFlare_Yellow","ACE_Chemlight_Orange","ACE_Chemlight_White","ACE_Chemlight_HiRed","ACE_Chemlight_HiYellow","ACE_Chemlight_HiBlue",
"ACE_Chemlight_HiGreen","ACE_Chemlight_UltraHiOrange","ACE_Chemlight_IR","hlc_30rnd_68x43_MFMJ","hlc_30rnd_68x43_Tracer","hlc_30rnd_68x43_Sub","ACE_20Rnd_762x51_Mag_Tracer",
"ACE_20Rnd_762x51_Mag_Tracer_Dim","20Rnd_762x51_Mag","hlc_30Rnd_556x45_EPR_sg550","hlc_30Rnd_556x45_SPR_sg550","hlc_30Rnd_556x45_T_sg550","hlc_30rnd_556x45_EPR","hlc_30rnd_556x45_SOST",
"hlc_30rnd_556x45_S","hlc_30rnd_556x45_t","hlc_50rnd_556x45_EPR","hlc_50rnd_556x45_M","hlc_30rnd_556x45_SPR_G36","hlc_30rnd_556x45_MDIM_G36","hlc_100rnd_556x45_EPR_G36","UGL_FlareWhite_F",
"UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","hlc_20rnd_762x51_barrier_G3","hlc_20rnd_762x51_MDim_G3","hlc_30rnd_556x45_M_G36","hlc_100Rnd_762x51_M_MG3",
"hlc_250Rnd_762x51_M_MG3","hlc_30rnd_556x45_S_G36","hlc_20rnd_762x51_S_G3","hlc_12Rnd_357SIG_JHP_P226","arifle_SPAR_03_blk_F","hlc_rifle_SG551LB_TAC","hlc_rifle_SG551LB_TAC_GL",
"hlc_rifle_ACR_SBR_black_grip3","hlc_rifle_ACR_GL_SBR_black","hlc_rifle_416D145_x15_grip3","hlc_rifle_416D145_gl","BWA3_Uniform_tee_Tropen","BWA3_Uniform_sleeves_Tropen",
"BWA3_Uniform_Ghillie_Tropen","BWA3_AssaultPack_Tropen_Medic","BWA3_FieldPack_tropen","BWA3_Kitbag_Tropen","BWA3_TacticalPack_Tropen","BWA3_TacticalPack_Tropen_Medic","BWA3_OpsCore_Tropen",
"BWA3_OpsCore_Tropen_Patch","ACE_NVG_GEN4","NVGogglesB_blk_F","NVGogglesB_grn_F","Laserdesignator_01_khk_F","Laserdesignator_03","Binocular","ACE_NVG_Wide","hlc_rifle_auga2lsw",
"hlc_40Rnd_556x45_T_AUG","HLC_optic_ATT","hlc_30Rnd_556x45_T_AUG","hlc_40Rnd_556x45_SOST_AUG","hlc_40Rnd_556x45_SPR_AUG","hlc_40Rnd_556x45_TDIM_AUG","hlc_40Rnd_556x45_M_AUG",
"hlc_40Rnd_556x45_MDIM_AUG","hlc_30Rnd_556x45_MDIM_AUG","hlc_30Rnd_556x45_M_AUG","hlc_30Rnd_556x45_B_AUG","hlc_40Rnd_556x45_B_AUG","hlc_30Rnd_556x45_TDIM_AUG","hlc_30Rnd_556x45_SOST_AUG",
"hlc_30Rnd_556x45_SPR_AUG","hlc_rifle_RU5562","rhsusf_acc_SF3P556","HLC_Optic_Docter_CADEX","hlc_rifle_ACR_GL_Carb_tan","HLC_optic_Siglite","hlc_rifle_m4m203",
"rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red","rhs_weap_fim92","rhs_fim92_mag","HLC_Optic_Romeo1_RX","BWA3_DM32_Purple","BWA3_DM32_Red","BWA3_DM32_Orange","BWA3_DM32_Yellow",
"BWA3_DM32_Green","ACE_M84","hlc_30rnd_556x45_SOST_L5","rhs_mag_M433_HEDP","HLC_optic_HP","hlc_30rnd_556x45_TDim_L5","hlc_30rnd_556x45_M_L5","hlc_30rnd_556x45_MDim_L5",
"hlc_30rnd_556x45_EPR_L5","1Rnd_SmokeGreen_Grenade_shell","ACE_40mm_Flare_ir","ACE_40mm_Flare_red","ACE_40mm_Flare_green","rhs_mag_m576","rhs_mag_m4009","hlc_rifle_augsr_t",
"HLC_optic_VTAC","hlc_rifle_auga3","HLC_optic_XS","hlc_rifle_Colt727_GL","hlc_rifle_416D145","hlc_rifle_CQBR","HLC_optic_stavenhagen","MMG_01_tan_F","ACE_muzzle_mzls_93mmg",
"150Rnd_93x64_Mag","bipod_02_F_tan","ACE_150Rnd_93x64_Mag_yellow","ACE_150Rnd_93x64_Mag_red","HLC_Rifle_g3ka4_GL","hlc_muzzle_Gunfighter_comp","hlc_rifle_G36C","hlc_rifle_G36E1AG36_Romi",
"HLC_Optic_G36Export35x","srifle_DMR_05_blk_F","10Rnd_93x64_DMR_05_Mag","hlc_rifle_g3a3vris","muzzle_snds_B","optic_LRPS","muzzle_snds_93mmg","srifle_DMR_05_tan_f","muzzle_snds_93mmg_tan",
"hlc_rifle_BAB","hlc_rifle_416D165","ACE_150Rnd_556x45_Drum_tracer_green","rhs_mag_100Rnd_556x45_M855A1_cmag_mixed","hlc_50rnd_556x45_SOST","hlc_50rnd_556x45_M","hlc_50rnd_556x45_MDim",
"hlc_rifle_416D10","20Rnd_762x51_Mag","ACE_20Rnd_762x51_Mag_tracer_yellow","ACE_20Rnd_762x51_Mag_tracer_green","ACE_20Rnd_762x51_Mag_SD","arifle_SPAR_03_snd_F","arifle_SPAR_03_khk_F",
"hlc_rifle_hk53RAS","hlc_30rnd_556x45_b_HK33","hlc_30rnd_556x45_mdim_HK33","hlc_30rnd_556x45_M_HK33","hlc_30rnd_556x45_tdim_HK33","hlc_30rnd_556x45_SPR_HK33","hlc_30rnd_556x45_SOST_HK33",
"hlc_30rnd_556x45_t_HK33","hlc_m249_SQuantoon","rhsusf_100Rnd_556x45_M995_soft_pouch_coyote","hlc_m249_pip3","hlc_200rnd_556x45_B_SAW","hlc_200rnd_556x45_Mdim_SAW","hlc_200rnd_556x45_M_SAW",
"hlc_200rnd_556x45_T_SAW","rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote","hlc_rifle_M14dmr_Rail","hlc_20Rnd_762x51_B_M14","hlc_20Rnd_762x51_Mdim_M14","hlc_20Rnd_762x51_Tdim_M14",
"hlc_20Rnd_762x51_mk316_M14","hlc_20Rnd_762x51_barrier_M14","hlc_20Rnd_762x51_S_M14","hlc_20Rnd_762x51_T_M14","hlc_rifle_M27IAR","hlc_rifle_mk18mod0","hlc_lmg_MG3_optic",
"srifle_DMR_07_blk_F","20Rnd_650x39_Cased_Mag_F","ACE_20Rnd_65x47_Scenar_mag","ACE_20Rnd_65_Creedmor_mag","ACE_10Rnd_580x42_DBP88_Mag","hlc_lmg_MG3KWS_b","hlc_rifle_SG551SB_TAC",
"hlc_rifle_SAMR","hlc_rifle_STG58F","hlc_20Rnd_762x51_B_fal","hlc_10Rnd_762x51_TDim_fal","hlc_20Rnd_762x51_TDim_fal","hlc_10Rnd_762x51_B_fal","hlc_10Rnd_762x51_mk316_fal",
"hlc_20Rnd_762x51_mk316_fal","hlc_10Rnd_762x51_barrier_fal","hlc_20Rnd_762x51_barrier_fal","hlc_10Rnd_762x51_S_fal","hlc_20Rnd_762x51_S_fal","hlc_10Rnd_762x51_T_fal","hlc_20Rnd_762x51_T_fal",
"ACE_VMH3","HLC_Optic_G36dualoptic35x","ACE_RangeTable_82mm","kka3_ace_extension_Land_DrillAku_F","ACE_artilleryTable","ACE_Banana","ACE_Fortify","ACE_bloodIV","ACE_bloodIV_250",
"ACE_bloodIV_500","kka3_ace_extension_Land_Camping_Light_off_F","kka3_ace_extension_Land_CampingChair_V1_F","kka3_ace_extension_Land_CampingTable_F","ACE_Can_Franta","ACE_Can_RedGull",
"ACE_Can_Spirit","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_MeatballsPasta","ACE_MRE_ChickenHerbDumplings","ACE_MRE_ChickenTikkaMasala","ACE_MRE_LambCurry",
"ACE_MRE_BeefStew","ACE_MRE_SteakVegetables","ACE_Canteen","kka3_ace_extension_TapeSign_F","ACE_Humanitarian_Ration","ACE_IR_Strobe_Item","ACE_Flashlight_KSF1",
"kka3_ace_extension_Campfire_burning_F","ACE_Clacker","ACE_M26_Clacker","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","kka3_ace_extension_Land_BagFence_Long_F",
"kka3_ace_extension_Land_BagFence_Round_F","kka3_ace_extension_Land_Wrench_F","ACE_WaterBottle","ToolKit","bipod_01_F_mtp","bipod_01_F_snd","bipod_01_F_khk","ACE_muzzle_mzls_smg_02",
"ACE_muzzle_mzls_B","ACE_muzzle_mzls_H","ACE_muzzle_mzls_L","ACE_muzzle_mzls_smg_01","ACE_muzzle_mzls_338","muzzle_snds_B_khk_F","muzzle_snds_B_snd_F","HLC_Optic_G36Dualoptic15x",
"HLC_Optic_G36Dualoptic15x2d","HLC_Optic_G36dualoptic35x2d","murshun_cigs_cigpack","murshun_cigs_lighter","APERSMineDispenser_Mag","DemoCharge_Remote_Mag","SatchelCharge_Remote_Mag",
"ClaymoreDirectionalMine_Remote_Mag","APERSBoundingMine_Range_Mag","APERSMine_Range_Mag","APERSTripMine_Wire_Mag","SLAMDirectionalMine_Wire_Mag","ATMine_Range_Mag",
"IEDUrbanSmall_Remote_Mag","IEDLandSmall_Remote_Mag","IEDUrbanBig_Remote_Mag","IEDLandBig_Remote_Mag","rhs_ec75_mag","rhs_ec200_sand_mag","rhs_ec200_mag","rhs_ec400_sand_mag",
"rhs_ec400_mag","rhs_ec75_sand_mag","Chemlight_yellow","Chemlight_green","Chemlight_red","SmokeShellBlue","SmokeShellYellow","SmokeShellGreen","SmokeShellOrange","SmokeShellRed",
"SmokeShellPurple","HandGrenade","SmokeShell","MiniGrenade","rhs_charge_sb3kg_mag","rhs_mag_m18_yellow","rhs_mag_m18_green","rhs_mag_m18_purple","rhs_mag_m18_red","rhs_mag_m67",
"hlc_rifle_awcovert","BWA3_Uniform_sleeves_Fleck","BWA3_Vest_Fleck","BWA3_AssaultPack_Fleck","BWA3_Beret_Jaeger","hlc_5rnd_300WM_BTSP_AWM","hlc_5rnd_300WM_AP_AWM","hlc_5rnd_300WM_FMJ_AWM",
"hlc_5rnd_300WM_mk248_AWM","hlc_5rnd_300WM_SBT_AWM","hlc_5rnd_300WM_T_AWM","BWA3_Uniform_Fleck","BWA3_Booniehat_Fleck","hlc_rifle_awmagnum","BWA3_Uniform_sleeves_Fleck",
"BWA3_AssaultPack_Fleck_Medic","BWA3_OpsCore_Fleck","ACE_Vector","hlc_rifle_awMagnum_OD_ghillie","BWA3_Uniform_tee_Fleck","BWA3_Vest_Grenadier_Fleck","BWA3_FieldPack_Fleck",
"BWA3_OpsCore_Fleck_Camera","U_B_FullGhillie_lsh","BWA3_Vest_Leader_Fleck","BWA3_Carryall_Fleck","BWA3_OpsCore_Fleck_Patch","U_B_FullGhillie_sard","BWA3_Vest_Marksman_Fleck",
"BWA3_PatrolPack_Fleck","U_B_FullGhillie_ard","BWA3_Vest_MachineGunner_Fleck","BWA3_Kitbag_Fleck","BWA3_Vest_Medic_Fleck","BWA3_Kitbag_Fleck_Medic","PBW_muetze1_fleck","PBW_muetze2_fleck",
"BWA3_Vest_Rifleman_Fleck","BWA3_TacticalPack_Fleck","PBW_muetze1_tropen","PBW_muetze2_tropen","BWA3_Vest_Tropen","BWA3_TacticalPack_Fleck_Medic","BWA3_Uniform_Ghillie_Fleck",
"ACREFR_rt1523g_big_bwmod","M40_Gas_mask_nbc_green_k3_d","M40_Gas_mask_nbc_green_k4_d","M40_Gas_mask_nbc_green_k2_d","M40_Gas_mask_nbc_green_k1_d","bwa3_acc_varioray_laser_black",
"srifle_GM6_F","ACE_5Rnd_127x99_AMAX_Mag","ACE_5Rnd_127x99_Mag","ACE_5Rnd_127x99_API_Mag","5Rnd_127x108_APDS_Mag","5Rnd_127x108_Mag","srifle_LRR_F","ACE_7Rnd_408_305gr_Mag",
"launch_MRAWS_green_F","ACREFR_rt1523g_big_bwmod","rhsusf_acc_M8541_low","rhsusf_acc_M8541_low_d","rhsusf_acc_M8541_low_wd","optic_AMS","optic_AMS_khk","optic_AMS_snd","rhsusf_acc_ACOG_MDO",
"rhsusf_acc_su230a_mrds","hlc_optic_HensoldtZO_lo_Docter_2D","hlc_optic_HensoldtZO_lo_Docter","hlc_optic_HensoldtZO_Hi_Docter_2D","hlc_optic_HensoldtZO_Hi_Docter","BWA3_optic_CompM2_tan",
"BWA3_optic_CompM2_green","optic_Arco_blk_F","optic_Arco","BWA3_optic_EOTech552","BWA3_optic_EOTech552_tan","optic_Hamr_khk_F","optic_ERCO_khk_F","launch_MRAWS_olive_F","optic_ERCO_snd_F",
"rhs_weap_fim92","rhs_fim92_mag","ACREFR_rt1523g_bwmod","PBW_Brille_braun","PBW_Brille_gelb","PBW_Brille_schwarz","PBW_RevisionF_klar","PBW_RevisionF_Dunkel","PBW_RevisionT_Klar",
"PBW_RevisionT_Dunkel","HLC_Optic_G36dualoptic35x2d","HLC_Optic_G36dualoptic35x","HLC_Optic_G36Dualoptic15x2d","HLC_Optic_G36Dualoptic15x","HLC_Optic_G36Export15x",
"HLC_Optic_G36Export15x2d","HLC_Optic_G36Export35x","HLC_Optic_G36Export35x2d","hlc_rifle_G36KE1","hlc_rifle_G36E1AG36","hlc_rifle_G36E1","PBW_Headset","TBW_Funk_Fleck","TBW_Funk_Tropen",
"ACRE_VHF30108SPIKE","ACRE_VHF30108MAST","ACRE_PRC343","ACRE_PRC152","ACRE_PRC117F","ACRE_PRC148","ACRE_SEM52SL","ACRE_SEM70","ACRE_VHF30108","ACE_rope12","ACE_rope36","ACE_rope6",
"ACE_rope27","ACE_rope18","ACE_rope3","ACE_rope_15","arifle_MX_Black_F","ACE_muzzle_mzls_H","rhsusf_acc_anpeq15side_bk","BWA3_optic_PMII_DMR_MicroT1_front","30Rnd_65x39_caseless_black_mag",
"HLC_bipod_UTGShooters","hgun_esd_01_F","muzzle_antenna_02_f","acc_esd_01_flashlight","ESD_01_DummyMagazine_1","BWA3_Uniform_Tropen","BWA3_Vest_JPC_Rifleman_Fleck","muzzle_antenna_03_f",
"muzzle_antenna_01_f","optic_NVS","optic_Nightstalker","BWA3_optic_M5Xi_Tremor3_MicroT2_pip","BWA3_optic_M5Xi_MSR_pip","40xtra_nade_in_thermite","40xtra_nade_ms_black",
"40xtra_nade_smoke_pink","40xtra_nade_smoke_cyan","40xtra_nade_throw_shoe","40xtra_nade_smoke_wp","30Rnd_65x39_caseless_black_mag_Tracer","100Rnd_65x39_caseless_black_mag",
"100Rnd_65x39_caseless_black_mag_tracer","murshun_cigs_matches","immersion_pops_poppack","BWA3_Vest_JPC_Leader_Tropen","BWA3_Vest_JPC_Rifleman_Tropen","BWA3_Vest_JPC_Leader_Fleck",
"arifle_MXM_Black_F","muzzle_snds_H","arifle_MX_GL_Black_F","3Rnd_SmokeBlue_Grenade_shell","3Rnd_SmokeYellow_Grenade_shell","3Rnd_SmokeGreen_Grenade_shell","3Rnd_SmokeOrange_Grenade_shell",
"3Rnd_SmokeRed_Grenade_shell","3Rnd_SmokePurple_Grenade_shell","3Rnd_Smoke_Grenade_shell","3Rnd_HE_Grenade_shell","40xtra_3Rnd_40mm_msblack","40xtra_3Rnd_40mm_msblue",
"40xtra_3Rnd_40mm_msbrown","40xtra_3Rnd_40mm_mscyan","40xtra_3Rnd_40mm_msgreen","40xtra_3Rnd_40mm_msorange","40xtra_3Rnd_40mm_mspink","40xtra_3Rnd_40mm_mspurple","40xtra_3Rnd_40mm_msred",
"40xtra_3Rnd_40mm_regblack","40xtra_3Rnd_40mm_regbrown","40xtra_3Rnd_40mm_regcyan","40xtra_3Rnd_40mm_regpink","40xtra_3Rnd_40mm_mswhite","40xtra_3Rnd_40mm_msyellow",
"40xtra_1Rnd_40mm_msblack","40xtra_1Rnd_40mm_msblue","40xtra_G_40mm_msbrown","40xtra_G_40mm_mscyan","40xtra_G_40mm_msgreen","40xtra_G_40mm_msorange","40xtra_G_40mm_mspink",
"40xtra_G_40mm_mspurple","40xtra_G_40mm_msred","40xtra_1Rnd_40mm_mswhite","40xtra_1Rnd_40mm_wp","40xtra_G_40mm_msyellow","40xtra_G_40mm_regblack","40xtra_G_40mm_regbrown",
"40xtra_G_40mm_regcyan","40xtra_G_40mm_regpink","arifle_MXC_Black_F","arifle_MX_SW_Black_F","BWA3_G28","BWA3_20Rnd_762x51_G28","40xtra_3Rnd_40mm_he3fuse","40xtra_3Rnd_40mm_he6fuse",
"40xtra_3Rnd_40mm_cluster","40xtra_3Rnd_40mm_buckshotmix","40xtra_3Rnd_40mm_heav","40xtra_3Rnd_40mm_hedp","40xtra_3Rnd_40mm_shrapnel","40xtra_3Rnd_40mm_slap","40xtra_3Rnd_40mm_wp",
"40xtra_1Rnd_40mm_he3fuse","40xtra_1Rnd_40mm_he6fuse","40xtra_1Rnd_40mm_canisterusa","40xtra_1Rnd_40mm_buckshotmix","40xtra_1Rnd_40mm_cluster","40xtra_1Rnd_40mm_heav",
"40xtra_1Rnd_40mm_hedp","40xtra_1Rnd_40mm_shrapnel","40xtra_1Rnd_40mm_slap","40xtra_1Rnd_40mm_wp","40xtra_1Rnd_40mm_canister420","BWA3_20Rnd_762x51_G28_AP","BWA3_20Rnd_762x51_G28_Tracer_Dim",
"BWA3_20Rnd_762x51_G28_Tracer","BWA3_20Rnd_762x51_G28_SD","BWA3_20Rnd_762x51_G28_LR","MRAWS_HEAT_F","MAA_MAAWS_HE441_AB100","MAA_MAAWS_HE441_AB250","MAA_MAAWS_HEDP502","MAA_MAAWS_MT756",
"MAA_MAAWS_ASM509","MAA_MAAWS_ADM401","MAA_MAAWS_SMOKE469","B_LegStrapBag_coyote_F","B_LegStrapBag_black_F","B_LegStrapBag_olive_F","greenmag_ammo_338_basic_30Rnd",
"greenmag_ammo_338_basic_60Rnd","greenmag_beltlinked_338_basic_100","greenmag_ammo_408_basic_60Rnd","greenmag_beltlinked_338_basic_150","greenmag_beltlinked_338_basic_200",
"greenmag_beltlinked_338_basic_50","greenmag_ammo_408_basic_30Rnd","greenmag_ammo_45ACP_basic_30Rnd","greenmag_ammo_45ACP_basic_60Rnd","greenmag_ammo_50BW_basic_30Rnd",
"greenmag_ammo_50BW_basic_60Rnd","greenmag_ammo_127x108_basic_30Rnd","greenmag_ammo_127x108_basic_60Rnd","greenmag_beltlinked_127x108_basic_100","greenmag_ammo_127x54_basic_30Rnd",
"greenmag_ammo_127x54_basic_60Rnd","greenmag_beltlinked_93x64_basic_146","greenmag_beltlinked_127x108_basic_150","greenmag_beltlinked_127x108_basic_200","greenmag_beltlinked_127x108_basic_50",
"greenmag_ammo_127x99_basic_30Rnd","greenmag_ammo_127x99_basic_60Rnd","greenmag_beltlinked_127x99_basic_100","greenmag_beltlinked_127x99_basic_150","greenmag_beltlinked_127x99_basic_200",
"greenmag_beltlinked_127x99_basic_50","greenmag_ammo_545x39_basic_30Rnd","greenmag_ammo_545x39_basic_60Rnd","greenmag_ammo_556x45_basic_30Rnd","greenmag_ammo_556x45_basic_60Rnd",
"greenmag_beltlinked_556x45_basic_100","greenmag_beltlinked_556x45_basic_150","greenmag_beltlinked_556x45_basic_200","greenmag_beltlinked_556x45_basic_50","greenmag_ammo_570x28_basic_30Rnd",
"greenmag_ammo_570x28_basic_60Rnd","greenmag_ammo_580x42_basic_30Rnd","greenmag_ammo_580x42_basic_60Rnd","greenmag_ammo_650x39_basic_30Rnd","greenmag_ammo_650x39_basic_60Rnd",
"greenmag_beltlinked_650x39_basic_100","greenmag_beltlinked_650x39_basic_150","greenmag_beltlinked_650x39_basic_200","greenmag_beltlinked_650x39_basic_50","greenmag_ammo_762x39_basic_30Rnd",
"greenmag_ammo_762x39_basic_60Rnd","greenmag_ammo_762x51_basic_30Rnd","greenmag_ammo_762x51_basic_60Rnd","greenmag_beltlinked_762x51_basic_100","greenmag_beltlinked_762x51_basic_150",
"greenmag_ammo_93x64_basic_30Rnd","greenmag_ammo_93x64_basic_60Rnd","greenmag_beltlinked_93x64_basic_100","greenmag_beltlinked_93x64_basic_150","greenmag_beltlinked_93x64_basic_200",
"greenmag_beltlinked_93x64_basic_50","greenmag_ammo_9x19_basic_30Rnd","greenmag_ammo_9x19_basic_60Rnd","greenmag_ammo_9x21_basic_30Rnd","greenmag_ammo_9x21_basic_60Rnd","ACE_ATNAA",
"ACE_Canteen","ACE_Humanitarian_Ration","ACE_WaterBottle","BWA3_optic_NSV80","BWA3_optic_NSV600","RyanZombiesAntiVirusCure_Item","RyanZombiesAntiVirusTemporary_Item","BW_Facepaint",
"dev_enzymeCapsule","dev_enzymeCapsule_refined","PapersPlease_PassportMilitary","PapersPlease_PermitGeneric","greenmag_item_speedloader","Serbian_Facepaint","MRH_FoldedSatcomAntenna",
"BWA3_G36A2_AG40_pip","BWA3_optic_MicroT2_G36A2_pip","BWA3_optic_RSAS_G36A2_pip","BWA3_30Rnd_556x45_G36_Tracer","BWA3_30Rnd_556x45_G36","BWA3_30Rnd_556x45_G36_SD",
"BWA3_30Rnd_556x45_G36_Tracer_Dim","BWA3_G36A2_pip","MRH_TacticalDisplay","PBW_Helm4_fleck","PBW_Helm4_fleck_HBO","PBW_Helm4_fleck_HBOD","PBW_Helm5_fleck","PBW_Helm5_fleck_H",
"PBW_Helm4_fleck_H","PBW_Helm4_tropen","PBW_Helm4_tropen_HBO","PBW_Helm4_tropen_HBOD","PBW_Helm4_tropen_H","US_Facepaint","PapersPlease_PermitWeapons","PapersPlease_PermitVehicle",
"BWA3_acc_VarioRay_irlaser","BWA3_optic_PMII_DMR_MicroT1_rear_pip","BWA3_optic_PMII_DMR_MicroT1_front_pip","optic_Holosight","optic_Holosight_khk_F","BWA3_optic_EOTech_Mag_Off",
"BWA3_optic_EOTech_sand_Mag_Off","BWA3_optic_ZO4x30_MicroT2_pip","BWA3_optic_ZO4x30_RSAS_pip","BWA3_MP7","optic_ACO_grn_smg","BWA3_muzzle_snds_Rotex_II","optic_Aco_smg",
"BWA3_40Rnd_46x30_MP7","BWA3_40Rnd_46x30_MP7_SD","ACE_launch_NLAW_ready_F","NLAW_F","rhs_weap_m72a7","rhs_m72a7_mag","rhs_weap_M136","rhs_m136_mag","JSHK_contam_mask_s10_fleck",
"JSHK_contam_mask_m04_fleck_hood","JSHK_contam_detector","ACE_Altimeter","H_Hat_Tinfoil_F","PBW_barett_san","PBW_barett_fespaeh","BWA3_G29","BWA3_muzzle_snds_Rotex_Monoblock",
"BWA3_10Rnd_86x70_G29_Tracer","BWA3_10Rnd_86x70_G29","W_BW2035_Uniform_Fleck1","kat_stethoscope","kat_crossPanel","kat_IV_16","kat_TXA","kat_aatKit","kat_accuvac","kat_Painkiller",
"kat_chestSeal","kat_IO_FAST","kat_larynx","kat_nitroglycerin","kat_X_AED","kat_amiodarone","kat_atropine","kat_guedel","kat_lidocaine","kat_naloxone","kat_norepinephrine",
"kat_phenylephrine","KAT_Empty_bloodIV_500","KAT_Empty_bloodIV_250","Nilia_MedPanel","kat_Carbonate","W_BW2035_Uniform_Fleck","rhs_googles_clear","rhs_googles_orange","rhs_googles_black",
"rhs_googles_yellow","rhsusf_opscore_fg_pelt_cam","kat_AED","kat_bloodIV_O_N","kat_bloodIV_O_250_N","kat_bloodIV_O_500_N","ace_marker_flags_blue","ace_marker_flags_yellow",
"ace_marker_flags_green","ace_marker_flags_purple","ace_marker_flags_orange","ace_marker_flags_red","ace_marker_flags_black","ace_marker_flags_white","MRH_FoldedSatcomAntenna",
"PBW_DM51A1_NoFrag","BWA3_DM51A1", "kat_Pulseoximeter","hlc_rifle_awmagnum_FDE","hlc_rifle_awmagnum_FDE_ghillie"


], true ] call ace_arsenal_fnc_initBox; //true to add arsenal globally

hint "Arsenal wurde Geladen";