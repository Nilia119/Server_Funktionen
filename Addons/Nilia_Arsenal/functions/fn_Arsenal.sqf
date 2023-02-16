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
[
//Waffen
"hlc_rifle_G36VAG36","hlc_rifle_PSG1A1_RIS","hlc_rifle_ACR68_full_black_grip","arifle_SPAR_03_blk_F","hlc_rifle_SG551LB_TAC","hlc_rifle_SG551LB_TAC_GL","hlc_rifle_awmagnum_FDE",
"hlc_rifle_ACR_SBR_black_grip3","hlc_rifle_ACR_GL_SBR_black","hlc_rifle_M27IAR","hlc_rifle_mk18mod0","hlc_lmg_MG3_optic","srifle_DMR_07_blk_F",
"ACE_VMH3","hlc_rifle_awcovert","hlc_rifle_awmagnum","hlc_rifle_awMagnum_OD_ghillie","srifle_GM6_F","srifle_LRR_F","launch_MRAWS_green_F","launch_MRAWS_olive_F","rhs_weap_fim92",
"hlc_rifle_G36KE1","hlc_rifle_G36E1AG36","hlc_rifle_G36E1","arifle_MX_Black_F","hlc_pistol_P226R_357Combat","hlc_rifle_G36V","launch_MRAWS_sand_F","hlc_rifle_416D145_gl",
"hlc_rifle_auga2lsw","hlc_rifle_RU5562","hlc_rifle_ACR_GL_Carb_tan","hlc_rifle_m4m203","rhs_weap_fim92","hlc_rifle_augsr_t","hlc_rifle_auga3","hlc_rifle_Colt727_GL","hlc_rifle_416D145",
"hlc_rifle_CQBR","MMG_01_tan_F","HLC_Rifle_g3ka4_GL","hlc_rifle_G36C","hlc_rifle_G36E1AG36_Romi","srifle_DMR_05_blk_F","hlc_rifle_g3a3vris","srifle_DMR_05_tan_f","hlc_rifle_BAB",
"hlc_rifle_416D165","hlc_rifle_416D10","arifle_SPAR_03_snd_F","arifle_SPAR_03_khk_F","hlc_rifle_hk53RAS","hlc_m249_SQuantoon","hlc_m249_pip3","hlc_rifle_M14dmr_Rail","hlc_lmg_MG3KWS_b",
"hlc_rifle_SG551SB_TAC","hlc_rifle_SAMR","hlc_rifle_STG58F","hgun_esd_01_F","arifle_MXM_Black_F","arifle_MX_GL_Black_F","arifle_MXC_Black_F","arifle_MX_SW_Black_F","BWA3_G28","BWA3_G29",
"BWA3_G36A2_pip","BWA3_MP7","ACE_launch_NLAW_ready_F","NLAW_F","rhs_weap_m72a7","rhs_m72a7_mag","rhs_weap_M136","rhs_m136_mag","SMG_03C_TR_camo","BWA3_RGW90","rhsusf_acc_rotex_mp7_aor1",
"SMG_03C_TR_black","rhsusf_weap_MP7A2_folded","SMG_03C_TR_khaki","SMG_03C_TR_hex","rhsusf_weap_MP7A2_folded_desert","rhsusf_weap_MP7A2_folded_aor1","rhsusf_weap_MP7A2_folded_winter",
"hlc_rifle_awmagnum_FDE_ghillie",
//Waffen Aufsätze
"hlc_muzzle_SF3P_556","optic_Hamr","bipod_01_F_blk","BWA3_optic_EOTech_sand","hlc_muzzle_TiRant9","HLC_Optic_Romeo1_RX","HLC_optic_HP","HLC_optic_VTAC","HLC_optic_XS","optic_ACO_grn_smg",
"HLC_optic_stavenhagen","ACE_muzzle_mzls_93mmg","bipod_02_F_tan","hlc_muzzle_Gunfighter_comp","HLC_Optic_G36Export35x","muzzle_snds_B","optic_LRPS","muzzle_snds_93mmg","optic_Aco_smg",
"muzzle_snds_93mmg_tan","HLC_Optic_G36dualoptic35x","bwa3_acc_varioray_laser_black","optic_AMS","optic_AMS_khk","optic_AMS_snd","rhsusf_acc_ACOG_MDO","rhsusf_acc_su230a_mrds",
"hlc_optic_HensoldtZO_lo_Docter_2D","hlc_optic_HensoldtZO_lo_Docter","hlc_optic_HensoldtZO_Hi_Docter_2D","acc_pointer_IR","hlc_muzzle_KX3_comp","hlc_optic_ATACR_Offset","bipod_01_F_khk",
"hlc_muzzle_300blk_KAC","hlc_muzzle_SF3P_762","rhsusf_acc_SF3P556","HLC_Optic_Docter_CADEX","HLC_optic_Siglite","optic_ERCO_blk_F","ACE_acc_pointer_green","BWA3_bipod_Harris",
"optic_Holosight_blk_F","BWA3_optic_CompM2","hlc_optic_HensoldtZO_lo_Docter","hlc_muzzle_556NATO_KAC","HLC_optic_ATT","BWA3_muzzle_snds_Rotex_Monoblock","BWA3_optic_ZO4x30_RSAS_pip",
"ACE_muzzle_mzls_smg_02","ACE_muzzle_mzls_B","ACE_muzzle_mzls_H","ACE_muzzle_mzls_L","ACE_muzzle_mzls_smg_01","ACE_muzzle_mzls_338","muzzle_snds_B_khk_F","muzzle_snds_B_snd_F",
"HLC_Optic_G36Dualoptic15x","HLC_Optic_G36Dualoptic15x2d","HLC_Optic_G36dualoptic35x2d","hlc_optic_HensoldtZO_Hi_Docter","BWA3_optic_CompM2_tan","BWA3_optic_CompM2_green","bipod_01_F_snd",
"optic_Arco_blk_F","optic_Arco","BWA3_optic_EOTech552","BWA3_optic_EOTech552_tan","optic_Hamr_khk_F","optic_ERCO_khk_F","optic_ERCO_snd_F","HLC_Optic_G36dualoptic35x2d","bipod_01_F_mtp",
"HLC_Optic_G36dualoptic35x","HLC_Optic_G36Dualoptic15x2d","HLC_Optic_G36Dualoptic15x","HLC_Optic_G36Export15x","HLC_Optic_G36Export15x2d","HLC_Optic_G36Export35x","BWA3_G36A2_AG40_pip",
"HLC_Optic_G36Export35x2d","ACE_muzzle_mzls_H","rhsusf_acc_anpeq15side_bk","BWA3_optic_PMII_DMR_MicroT1_front","HLC_bipod_UTGShooters","muzzle_antenna_03_f","muzzle_antenna_01_f",
"optic_NVS","optic_Nightstalker","BWA3_optic_M5Xi_Tremor3_MicroT2_pip","BWA3_optic_M5Xi_MSR_pip","muzzle_snds_H","BWA3_optic_NSV80","BWA3_optic_NSV600","BWA3_muzzle_snds_Rotex_II",
"BWA3_optic_MicroT2_G36A2_pip","BWA3_optic_RSAS_G36A2_pip","BWA3_acc_VarioRay_irlaser","BWA3_optic_PMII_DMR_MicroT1_rear_pip","BWA3_optic_PMII_DMR_MicroT1_front_pip","optic_Holosight",
"optic_Holosight_khk_F","BWA3_optic_EOTech_Mag_Off","BWA3_optic_EOTech_sand_Mag_Off","BWA3_optic_ZO4x30_MicroT2_pip","muzzle_snds_570","rhsusf_acc_rotex_mp7","rhsusf_acc_rotex_mp7_desert",
"rhsusf_acc_rotex_mp7_winter","acc_pointer_blue","acc_pointer_squad","hlc_grip_pmvfg_black","hlc_grip_pmvfg_tan","hlc_grip_pmvfg",
//Munition
"hlc_30rnd_556x45_EPR_G36","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","ACE_20Rnd_762x51_Mag_SD",
"1Rnd_SmokeOrange_Grenade_shell","hlc_20Rnd_762x51_S_M14","hlc_20Rnd_762x51_T_M14","20Rnd_650x39_Cased_Mag_F","ACE_20Rnd_65x47_Scenar_mag","ACE_20Rnd_65_Creedmor_mag","rhs_fim92_mag",
"ACE_10Rnd_580x42_DBP88_Mag","hlc_20Rnd_762x51_B_fal","hlc_10Rnd_762x51_TDim_fal","hlc_20Rnd_762x51_TDim_fal","hlc_10Rnd_762x51_B_fal","hlc_10Rnd_762x51_mk316_fal","rhs_mag_m4009",
"hlc_20Rnd_762x51_mk316_fal","1Rnd_HE_Grenade_shell","ACE_40mm_Flare_white","hlc_100rnd_556x45_M_G36","hlc_100rnd_556x45_Mdim_G36","MRAWS_HEAT_F","MRAWS_HE_F","hlc_30rnd_556x45_SOST_HK33",
"hlc_100Rnd_762x51_mdim_MG3","hlc_250Rnd_762x51_mdim_MG3","20Rnd_762x51_Mag","ACE_20Rnd_762x51_Mag_tracer_yellow","ACE_20Rnd_762x51_Mag_tracer_green","ESD_01_DummyMagazine_1",
"hlc_30rnd_556x45_b_HK33","hlc_30rnd_556x45_mdim_HK33","hlc_30rnd_556x45_M_HK33","hlc_30rnd_556x45_tdim_HK33","hlc_30rnd_556x45_SPR_HK33","40xtra_1Rnd_40mm_msblack","150Rnd_93x64_Mag",
"1Rnd_Smoke_Grenade_shell","hlc_12Rnd_357SIG_B_P226","hlc_30rnd_556x45_Tracers_G36","hlc_30rnd_556x45_TDIM_G36","hlc_30rnd_556x45_SOST_G36","1Rnd_SmokeBlue_Grenade_shell","UGL_FlareCIR_F",
"hlc_30rnd_68x43_FMJ","hlc_30rnd_556x45_t_HK33","rhsusf_100Rnd_556x45_M995_soft_pouch_coyote","hlc_200rnd_556x45_B_SAW","hlc_200rnd_556x45_Mdim_SAW","hlc_200rnd_556x45_M_SAW",
"hlc_200rnd_556x45_T_SAW","rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote","hlc_20Rnd_762x51_B_M14","hlc_20Rnd_762x51_Mdim_M14","hlc_20Rnd_762x51_Tdim_M14","hlc_20Rnd_762x51_mk316_M14",
"hlc_20Rnd_762x51_barrier_M14","40xtra_G_40mm_msred","40xtra_1Rnd_40mm_mswhite","40xtra_1Rnd_40mm_wp","40xtra_G_40mm_msyellow","40xtra_G_40mm_regblack","40xtra_G_40mm_regbrown",
"40xtra_G_40mm_regcyan","40xtra_G_40mm_regpink","40xtra_1Rnd_40mm_cluster","40xtra_1Rnd_40mm_heav","40xtra_1Rnd_40mm_hedp","40xtra_1Rnd_40mm_shrapnel","40xtra_1Rnd_40mm_slap",
"40xtra_1Rnd_40mm_wp","40xtra_1Rnd_40mm_canister420","BWA3_20Rnd_762x51_G28_AP","BWA3_20Rnd_762x51_G28_Tracer_Dim","BWA3_20Rnd_762x51_G28_Tracer","BWA3_20Rnd_762x51_G28_SD",
"BWA3_20Rnd_762x51_G28_LR","MRAWS_HEAT_F","MAA_MAAWS_HE441_AB100","hlc_20rnd_762x51_Mk316_G3","hlc_20rnd_762x51_T_G3","hlc_20rnd_762x51_IRDim_G3","hlc_20rnd_762x51_b_G3",
"hlc_250Rnd_762x51_T_MG3","hlc_lmg_MG3KWS_100rnd","hlc_50Rnd_762x51_Barrier_MG3","hlc_30rnd_556x45_SPR_G36","hlc_30rnd_556x45_MDIM_G36","hlc_100rnd_556x45_EPR_G36","UGL_FlareWhite_F",
"UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","hlc_20rnd_762x51_barrier_G3","hlc_10Rnd_762x51_barrier_fal","hlc_20Rnd_762x51_barrier_fal","BWA3_30Rnd_556x45_G36_Tracer",
"hlc_10Rnd_762x51_S_fal","hlc_20Rnd_762x51_S_fal","hlc_10Rnd_762x51_T_fal","hlc_20Rnd_762x51_T_fal","rhs_ec75_mag","rhs_ec200_sand_mag","rhs_ec200_mag","rhs_ec400_sand_mag",
"rhs_ec400_mag","rhs_ec75_sand_mag","BWA3_20Rnd_762x51_G28","40xtra_3Rnd_40mm_he3fuse","40xtra_3Rnd_40mm_he6fuse","40xtra_3Rnd_40mm_cluster","40xtra_3Rnd_40mm_buckshotmix",
"40xtra_3Rnd_40mm_heav","40xtra_3Rnd_40mm_hedp","40xtra_3Rnd_40mm_shrapnel","40xtra_3Rnd_40mm_slap","40xtra_3Rnd_40mm_wp","40xtra_1Rnd_40mm_he3fuse","40xtra_1Rnd_40mm_he6fuse",
"40xtra_1Rnd_40mm_canisterusa","40xtra_1Rnd_40mm_buckshotmix","hlc_30rnd_68x43_MFMJ","hlc_30rnd_68x43_Tracer","hlc_30rnd_68x43_Sub","ACE_20Rnd_762x51_Mag_Tracer",
"ACE_20Rnd_762x51_Mag_Tracer_Dim","20Rnd_762x51_Mag","hlc_30Rnd_556x45_EPR_sg550","hlc_30Rnd_556x45_SPR_sg550","hlc_30Rnd_556x45_T_sg550","hlc_30rnd_556x45_EPR","hlc_30rnd_556x45_SOST",
"hlc_30rnd_556x45_S","hlc_30rnd_556x45_t","hlc_50rnd_556x45_EPR","hlc_50rnd_556x45_M","hlc_30Rnd_556x45_T_AUG","hlc_40Rnd_556x45_SOST_AUG","hlc_40Rnd_556x45_SPR_AUG",
"hlc_40Rnd_556x45_TDIM_AUG","hlc_40Rnd_556x45_M_AUG","hlc_40Rnd_556x45_MDIM_AUG","hlc_30Rnd_556x45_MDIM_AUG","rhs_fim92_mag","hlc_30rnd_556x45_SOST_L5","rhs_mag_M433_HEDP",
"hlc_30rnd_556x45_TDim_L5","hlc_30rnd_556x45_M_L5","hlc_30rnd_556x45_MDim_L5","hlc_30rnd_556x45_EPR_L5","1Rnd_SmokeGreen_Grenade_shell","ACE_40mm_Flare_ir","hlc_20rnd_762x51_MDim_G3",
"hlc_30rnd_556x45_M_G36","hlc_100Rnd_762x51_M_MG3","hlc_250Rnd_762x51_M_MG3","hlc_30rnd_556x45_S_G36","hlc_20rnd_762x51_S_G3","hlc_12Rnd_357SIG_JHP_P226","hlc_40Rnd_556x45_T_AUG",
"hlc_30Rnd_556x45_M_AUG","hlc_30Rnd_556x45_B_AUG","hlc_40Rnd_556x45_B_AUG","hlc_30Rnd_556x45_TDIM_AUG","hlc_30Rnd_556x45_SOST_AUG","hlc_30Rnd_556x45_SPR_AUG","greenmag_ammo_9x19_basic_30Rnd",
"rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red","30Rnd_65x39_caseless_black_mag","muzzle_antenna_02_f","acc_esd_01_flashlight","BWA3_30Rnd_556x45_G36","BWA3_30Rnd_556x45_G36_SD",
"40xtra_3Rnd_40mm_regbrown","40xtra_3Rnd_40mm_regcyan","40xtra_3Rnd_40mm_regpink","40xtra_3Rnd_40mm_mswhite","40xtra_3Rnd_40mm_msyellow","greenmag_ammo_9x21_basic_60Rnd",
"40xtra_1Rnd_40mm_msblue","40xtra_G_40mm_msbrown","40xtra_G_40mm_mscyan","40xtra_G_40mm_msgreen","40xtra_G_40mm_msorange","40xtra_G_40mm_mspink","40xtra_G_40mm_mspurple",
"ACE_40mm_Flare_red","ACE_40mm_Flare_green","rhs_mag_m576","ACE_150Rnd_93x64_Mag_yellow","ACE_150Rnd_93x64_Mag_red","10Rnd_93x64_DMR_05_Mag","BWA3_30Rnd_556x45_G36_Tracer_Dim",
"ACE_150Rnd_556x45_Drum_tracer_green","rhs_mag_100Rnd_556x45_M855A1_cmag_mixed","hlc_50rnd_556x45_SOST","hlc_50rnd_556x45_M","hlc_50rnd_556x45_MDim","hlc_5rnd_300WM_BTSP_AWM",
"hlc_5rnd_300WM_AP_AWM","hlc_5rnd_300WM_FMJ_AWM","hlc_5rnd_300WM_mk248_AWM","hlc_5rnd_300WM_SBT_AWM","hlc_5rnd_300WM_T_AWM","ACE_7Rnd_408_305gr_Mag","ACE_5Rnd_127x99_AMAX_Mag",
"ACE_5Rnd_127x99_Mag","ACE_5Rnd_127x99_API_Mag","5Rnd_127x108_APDS_Mag","5Rnd_127x108_Mag","rhsusf_acc_M8541_low","rhsusf_acc_M8541_low_d","rhsusf_acc_M8541_low_wd",
"MAA_MAAWS_HE441_AB250","MAA_MAAWS_HEDP502","MAA_MAAWS_MT756","MAA_MAAWS_ASM509","MAA_MAAWS_ADM401","MAA_MAAWS_SMOKE469","greenmag_ammo_338_basic_30Rnd","greenmag_ammo_338_basic_60Rnd",
"greenmag_beltlinked_338_basic_100","greenmag_ammo_408_basic_60Rnd","greenmag_beltlinked_338_basic_150","greenmag_beltlinked_338_basic_200","greenmag_beltlinked_338_basic_50",
"greenmag_ammo_408_basic_30Rnd","greenmag_ammo_45ACP_basic_30Rnd","greenmag_ammo_45ACP_basic_60Rnd","40xtra_nade_in_thermite","40xtra_nade_ms_black","40xtra_nade_smoke_pink",
"40xtra_nade_smoke_cyan","40xtra_nade_throw_shoe","40xtra_nade_smoke_wp","30Rnd_65x39_caseless_black_mag_Tracer","100Rnd_65x39_caseless_black_mag","100Rnd_65x39_caseless_black_mag_tracer",
"3Rnd_SmokeBlue_Grenade_shell","3Rnd_SmokeYellow_Grenade_shell","3Rnd_SmokeGreen_Grenade_shell","3Rnd_SmokeOrange_Grenade_shell","3Rnd_SmokeRed_Grenade_shell","greenmag_ammo_9x19_basic_60Rnd",
"3Rnd_SmokePurple_Grenade_shell","3Rnd_Smoke_Grenade_shell","3Rnd_HE_Grenade_shell","40xtra_3Rnd_40mm_msblack","40xtra_3Rnd_40mm_msblue","40xtra_3Rnd_40mm_msbrown","BWA3_10Rnd_86x70_G29",
"40xtra_3Rnd_40mm_mscyan","40xtra_3Rnd_40mm_msgreen","40xtra_3Rnd_40mm_msorange","40xtra_3Rnd_40mm_mspink","40xtra_3Rnd_40mm_mspurple","40xtra_3Rnd_40mm_msred","BWA3_40Rnd_46x30_MP7_SD",
"40xtra_3Rnd_40mm_regblack","50Rnd_570x28_SMG_03","BWA3_RGW90_HH","50Rnd_570x28_SMG_03_tracer_blue","CUP_50Rnd_570x28_Green_Tracer_P90_M","CUP_50Rnd_570x28_Red_Tracer_P90_M",
"CUP_40Rnd_46x30_MP7_Green_Tracer","CUP_40Rnd_46x30_MP7_Red_Tracer","CUP_40Rnd_46x30_MP7_Yellow_Tracer","rhsusf_mag_40Rnd_46x30_AP","rhsusf_mag_40Rnd_46x30_FMJ",
"rhsusf_mag_40Rnd_46x30_JHP","CUP_50Rnd_570x28_Yellow_Tracer_P90_M","CUP_20Rnd_46x30_MP7","CUP_40Rnd_46x30_MP7",
"greenmag_ammo_50BW_basic_30Rnd","greenmag_ammo_50BW_basic_60Rnd","greenmag_ammo_127x108_basic_30Rnd","greenmag_ammo_127x108_basic_60Rnd","BWA3_40Rnd_46x30_MP7",
"greenmag_beltlinked_127x108_basic_100","greenmag_ammo_127x54_basic_30Rnd","greenmag_ammo_127x54_basic_60Rnd","greenmag_beltlinked_93x64_basic_146","greenmag_ammo_9x21_basic_30Rnd",
"greenmag_beltlinked_127x108_basic_150","greenmag_beltlinked_127x108_basic_200","greenmag_beltlinked_127x108_basic_50","greenmag_ammo_127x99_basic_30Rnd","BWA3_10Rnd_86x70_G29_Tracer",
"greenmag_ammo_127x99_basic_60Rnd","greenmag_beltlinked_127x99_basic_100","greenmag_beltlinked_127x99_basic_150","greenmag_beltlinked_127x99_basic_200","greenmag_beltlinked_93x64_basic_150",
"greenmag_beltlinked_127x99_basic_50","greenmag_ammo_545x39_basic_30Rnd","greenmag_ammo_545x39_basic_60Rnd","greenmag_ammo_556x45_basic_30Rnd","greenmag_ammo_556x45_basic_60Rnd",
"greenmag_beltlinked_556x45_basic_100","greenmag_beltlinked_556x45_basic_150","greenmag_beltlinked_556x45_basic_200","greenmag_beltlinked_556x45_basic_50","greenmag_beltlinked_93x64_basic_200",
"greenmag_ammo_570x28_basic_30Rnd","greenmag_ammo_570x28_basic_60Rnd","greenmag_ammo_580x42_basic_30Rnd","greenmag_ammo_580x42_basic_60Rnd","greenmag_ammo_650x39_basic_30Rnd",
"greenmag_ammo_650x39_basic_60Rnd","greenmag_beltlinked_650x39_basic_100","greenmag_beltlinked_650x39_basic_150","greenmag_beltlinked_650x39_basic_200","greenmag_beltlinked_93x64_basic_50",
"greenmag_beltlinked_650x39_basic_50","greenmag_ammo_762x39_basic_30Rnd","greenmag_ammo_762x39_basic_60Rnd","greenmag_ammo_762x51_basic_30Rnd","greenmag_ammo_762x51_basic_60Rnd",
"greenmag_beltlinked_762x51_basic_100","greenmag_beltlinked_762x51_basic_150","greenmag_ammo_93x64_basic_30Rnd","greenmag_ammo_93x64_basic_60Rnd","greenmag_beltlinked_93x64_basic_100",
"greenmag_ammo_570x28_basic_1Rnd","greenmag_ammo_570x28_basic_30Rnd","greenmag_ammo_570x28_basic_60Rnd","hlc_30rnd_556x45_t_L5",
//Granaten
"Chemlight_blue","ACE_Chemlight_HiWhite","BWA3_DM32_Blue","B_IR_Grenade","BWA3_DM25","BWA3_DM51A1","ACE_HandFlare_White","ACE_HandFlare_Red","ACE_HandFlare_Green","ACE_HandFlare_Yellow",
"BWA3_DM32_Purple","BWA3_DM32_Red","BWA3_DM32_Orange","BWA3_DM32_Yellow","BWA3_DM32_Green","ACE_M84","ACE_Chemlight_Orange","ACE_Chemlight_White","ACE_Chemlight_HiRed","BWA3_DM51A1",
"ACE_Chemlight_HiYellow","ACE_Chemlight_HiBlue","ACE_Chemlight_HiGreen","ACE_Chemlight_UltraHiOrange","ACE_Chemlight_IR","ACE_IR_Strobe_Item","Chemlight_yellow","Chemlight_green",
"Chemlight_red","SmokeShellBlue","SmokeShellYellow","SmokeShellGreen","SmokeShellOrange","SmokeShellRed","SmokeShellPurple","HandGrenade","SmokeShell","MiniGrenade","PBW_DM51A1_NoFrag",
"rhs_charge_sb3kg_mag","rhs_mag_m18_yellow","rhs_mag_m18_green","rhs_mag_m18_purple","rhs_mag_m18_red","rhs_mag_m67",
//Items
"ACE_fieldDressing","ACE_EarPlugs","ACE_elasticBandage","ACE_tourniquet","ACE_packingBandage","ACE_quikclot","ACE_epinephrine","ACE_CableTie","ACE_morphine","ACE_Flashlight_XL50",
"ACE_Sandbag_empty","ACE_SpottingScope","ACE_SpraypaintBlack","ACE_SpraypaintRed","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_Tripod","ACE_DAGR","ACE_DefusalKit","ACE_ATragMX",
"ACE_MRE_BeefStew","ACE_MRE_SteakVegetables","ACE_Canteen","kka3_ace_extension_TapeSign_F","ACE_Humanitarian_Ration","ACE_Flashlight_KSF1","kka3_ace_extension_Campfire_burning_F",
"ACE_Clacker","ACE_M26_Clacker","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","kka3_ace_extension_Land_BagFence_Long_F","ACE_MapTools","ACE_EntrenchingTool","ACE_Kestrel4500",
"ItemcTabHCam","ACE_splint","BWA3_G_Combat_orange","ACE_HuntIR_monitor","BWA3_G_Combat_black","NVGogglesB_gry_F","mgm_item_redgull","BWA3_G_Combat_clear","ACE_HuntIR_M203",
"Laserdesignator","ItemMap","ItemcTab","ItemCompass","ItemWatch","Laserbatteries","Rangefinder","ItemAndroid","ACE_adenosine","ACE_SpareBarrel","APERSBoundingMine_Range_Mag",
"APERSMine_Range_Mag","APERSTripMine_Wire_Mag","SLAMDirectionalMine_Wire_Mag","ATMine_Range_Mag","IEDUrbanSmall_Remote_Mag","IEDLandSmall_Remote_Mag","IEDUrbanBig_Remote_Mag",
"IEDLandBig_Remote_Mag","ACE_salineIV_250","ACE_salineIV_500","ACE_surgicalKit","ACE_salineIV","ACE_RangeCard","immersion_pops_poppack","ACE_Chemlight_Shield","ACE_Cellphone",
"ACE_UAVBattery","ACE_wirecutter","mgm_item_mre","ACE_NVG_GEN4","NVGogglesB_blk_F","NVGogglesB_grn_F","Laserdesignator_01_khk_F","Laserdesignator_03","Binocular","ACE_NVG_Wide",
"ACE_RangeTable_82mm","kka3_ace_extension_Land_DrillAku_F","ACE_artilleryTable","ACE_Banana","ACE_Fortify","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_Vector",
"M40_Gas_mask_nbc_green_k3_d","M40_Gas_mask_nbc_green_k4_d","M40_Gas_mask_nbc_green_k2_d","M40_Gas_mask_nbc_green_k1_d","PBW_Brille_braun","PBW_Brille_gelb","PBW_Brille_schwarz",
"PBW_RevisionF_klar","PBW_RevisionF_Dunkel","PBW_RevisionT_Klar","PBW_RevisionT_Dunkel","kka3_ace_extension_Land_Camping_Light_off_F","kka3_ace_extension_Land_CampingChair_V1_F",
"kka3_ace_extension_Land_CampingTable_F","ACE_Can_Franta","ACE_Can_RedGull","ACE_Can_Spirit","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_MeatballsPasta",
"ACE_MRE_ChickenHerbDumplings","ACE_MRE_ChickenTikkaMasala","ACE_MRE_LambCurry","kka3_ace_extension_Land_BagFence_Round_F","kka3_ace_extension_Land_Wrench_F","ACE_WaterBottle",
"ToolKit","murshun_cigs_cigpack","murshun_cigs_lighter","APERSMineDispenser_Mag","DemoCharge_Remote_Mag","SatchelCharge_Remote_Mag","ClaymoreDirectionalMine_Remote_Mag","PBW_Headset",
"ACRE_VHF30108SPIKE","ACRE_VHF30108MAST","ACRE_PRC343","ACRE_PRC152","ACRE_PRC117F","ACRE_PRC148","ACRE_SEM52SL","ACRE_SEM70","ACRE_VHF30108","ACE_rope12","ACE_rope36","ACE_rope6",
"ACE_rope27","ACE_rope18","ACE_rope3","ACE_rope_15","murshun_cigs_matches","immersion_pops_poppack","ACE_ATNAA","ACE_Canteen","ACE_Humanitarian_Ration","ACE_WaterBottle",
"RyanZombiesAntiVirusCure_Item","RyanZombiesAntiVirusTemporary_Item","BW_Facepaint","dev_enzymeCapsule","dev_enzymeCapsule_refined","PapersPlease_PassportMilitary","kat_Pulseoximeter",
"PapersPlease_PermitGeneric","greenmag_item_speedloader","Serbian_Facepaint","MRH_FoldedSatcomAntenna","MRH_TacticalDisplay","US_Facepaint","PapersPlease_PermitWeapons",
"PapersPlease_PermitVehicle","JSHK_contam_mask_s10_fleck","JSHK_contam_mask_m04_fleck_hood","JSHK_contam_detector","ACE_Altimeter","kat_stethoscope","kat_crossPanel","kat_IV_16",
"kat_TXA","kat_aatKit","kat_accuvac","kat_Painkiller","kat_chestSeal","kat_IO_FAST","kat_larynx","kat_nitroglycerin","kat_X_AED","kat_amiodarone","kat_atropine","kat_guedel",
"kat_lidocaine","kat_naloxone","kat_norepinephrine","kat_phenylephrine","KAT_Empty_bloodIV_500","KAT_Empty_bloodIV_250","Nilia_MedPanel","kat_Carbonate","rhs_googles_clear",
"rhs_googles_orange","rhs_googles_black","rhs_googles_yellow","kat_AED","kat_bloodIV_O_N","kat_bloodIV_O_250_N","kat_bloodIV_O_500_N","ace_marker_flags_blue","ace_marker_flags_yellow",
"ace_marker_flags_green","ace_marker_flags_purple","ace_marker_flags_orange","ace_marker_flags_red","ace_marker_flags_black","ace_marker_flags_white","MRH_FoldedSatcomAntenna",
"ACE_NVG_Wide_Black","ACE_NVG_Wide_Green","ACE_NVG_Gen4_Green","ACE_NVG_Gen4_Black","ABP_Cocaine","immersion_cigs_cigar0","kat_fentanyl","kat_etomidate","kat_flumazenil",
"kat_gasmaskFilter","kat_ketamine","kat_sealant","kat_clamp","kat_plate","kat_lidocaine","tsp_lockpick","kat_lorazepam","kat_nalbuphine","kat_ncdKit","ABP_Pervitin","kat_retractor",
"kat_scalpel","kat_Pervitin","kat_Caffeine","PBW_DM12","tsp_frameCharge_mag","FlareTripMine_Wire_Mag","tsp_popperCharge_mag","tsp_popperCharge_auto_mag","tsp_stickCharge_mag",
"tsp_stickCharge_auto_mag",
//Uniform
"BWA3_Uniform_Tropen","BWA3_Uniform_tee_Tropen","BWA3_Uniform_sleeves_Tropen","BWA3_Uniform_Ghillie_Tropen","BWA3_Uniform_sleeves_Fleck","BWA3_Uniform_Fleck","BWA3_Uniform_sleeves_Fleck",
"U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_FullGhillie_ard","BWA3_Uniform_Ghillie_Fleck","BWA3_Uniform_Tropen","W_BW2035_Uniform_Fleck1","W_BW2035_Uniform_Fleck",
"W_BW2035_Uniform_Fleck","W_BW2035_Uniform_Fleck1","W_BW2035_Uniform_Tropen",
//Westen
"BWA3_Vest_Leader_Tropen","BWA3_Vest_Grenadier_Tropen","BWA3_Vest_Medic_Tropen","BWA3_Vest_Rifleman_Tropen","BWA3_Vest_MachineGunner_Tropen","BWA3_Vest_Marksman_Tropen","BWA3_Vest_Fleck",
"BWA3_Uniform_tee_Fleck","BWA3_Vest_Grenadier_Fleck","BWA3_Vest_Leader_Fleck","BWA3_Vest_Marksman_Fleck","BWA3_Vest_MachineGunner_Fleck","BWA3_Vest_Medic_Fleck","BWA3_Vest_Rifleman_Fleck",
"BWA3_Vest_Tropen","BWA3_Vest_JPC_Rifleman_Fleck","BWA3_Vest_JPC_Leader_Tropen","BWA3_Vest_JPC_Rifleman_Tropen","BWA3_Vest_JPC_Leader_Fleck","CUP_V_B_GER_Armatus_BB_Fleck",
"CUP_V_B_GER_Armatus_Fleck","CUP_V_B_GER_Armatus_Trop","CUP_V_B_GER_Armatus_BB_Trop",
//Rucksäcke
"ACREFR_rt1523g_big_bwmod_tropen","BWA3_AssaultPack_Tropen","BWA3_Kitbag_Tropen_Medic","BWA3_Carryall_Tropen","BWA3_PatrolPack_Tropen","BWA3_AssaultPack_Tropen_Medic",
"BWA3_FieldPack_tropen","BWA3_Kitbag_Tropen","BWA3_TacticalPack_Tropen","BWA3_TacticalPack_Tropen_Medic","BWA3_AssaultPack_Fleck","BWA3_AssaultPack_Fleck_Medic","BWA3_FieldPack_Fleck",
"BWA3_Carryall_Fleck","BWA3_PatrolPack_Fleck","BWA3_Kitbag_Fleck","BWA3_Kitbag_Fleck_Medic","BWA3_TacticalPack_Fleck","BWA3_TacticalPack_Fleck_Medic","ACREFR_rt1523g_big_bwmod",
"ACREFR_rt1523g_big_bwmod","ACREFR_rt1523g_bwmod","TBW_Funk_Fleck","TBW_Funk_Tropen","B_LegStrapBag_coyote_F","B_LegStrapBag_black_F","B_LegStrapBag_olive_F",
"BW2035_Backpack_Fleck_Tortilia_Arzt","BW2035_Backpack_Tropen_Tortilia","BW2035_Backpack_Tropen_Tortilia_Arzt","BW2035_Backpack_San_Tortilia",
//Helme
"BWA3_Booniehat_Tropen","BWA3_OpsCore_Tropen_Camera","BWA3_OpsCore_Tropen","BWA3_OpsCore_Tropen_Patch","BWA3_Beret_Jaeger","BWA3_Booniehat_Fleck","BWA3_OpsCore_Fleck",
"BWA3_OpsCore_Fleck_Camera","BWA3_OpsCore_Fleck_Patch","PBW_muetze1_fleck","PBW_muetze2_fleck","PBW_muetze1_tropen","PBW_muetze2_tropen","PBW_Helm4_fleck","PBW_Helm4_fleck_HBO",
"PBW_Helm4_fleck_HBOD","PBW_Helm5_fleck","PBW_Helm5_fleck_H","PBW_Helm4_fleck_H","PBW_Helm4_tropen","PBW_Helm4_tropen_HBO","PBW_Helm4_tropen_HBOD","PBW_Helm4_tropen_H",
"H_Hat_Tinfoil_F","PBW_barett_san","PBW_barett_fespaeh","rhsusf_opscore_fg_pelt_cam","PBW_barett_art","CUP_H_Ger_Cap_Tan2"


], true ] call ace_arsenal_fnc_initBox; //true to add arsenal globally

hint "Arsenal wurde Geladen";