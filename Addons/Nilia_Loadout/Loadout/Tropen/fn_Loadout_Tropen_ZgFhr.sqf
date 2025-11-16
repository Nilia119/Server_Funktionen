private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// TODO RUCKSACK TAUSCHEN ZUM FUNKRUCKSACK (VERGRÖSSERN!)

// Set ACRE Babble Language
["en","ar"] call acre_api_fnc_babelSetSpokenLanguages;
["en","ar"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 0, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 2];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// Fünge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "Kompakt1"];
systemChat format ["Deine Klasse: %1", _unit getVariable "Nilia_Klasse"];

//hint
systemChat "Ausrüstung (Tropen): Zugführer geladen, sprachen konfiguriert und Rechte (Sani) gesetzt!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";


// "Add weapons";
_unit addWeapon "CUP_arifle_CZ805_A2_coyote";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_DBAL_A3_Green";
_unit addPrimaryWeaponItem "rhsusf_acc_su230a_mrds_3d";
_unit addPrimaryWeaponItem "hlc_100rnd_556x45_Mdim_G36";
_unit addPrimaryWeaponItem "bipod_01_F_blk";
_unit addWeapon "rhs_weap_M320";
_unit addHandgunItem "rhs_mag_M433_HEDP";

// "Add containers";
_unit forceAddUniform "W_EUFOR_Uniform_Tropen_Digital";
_unit addVest "BWA3_Vest_Leader_Tropen";
_unit addBackpack "EUFOR_Backpack_San_Tortilia";

// "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "Laserdesignator_01_khk_F";

// "Add items to containers";
_unit addItemToUniform "kat_IFAK";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "ItemcTabHCam";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "kat_larynx";
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_EntrenchingTool";
_unit addItemToUniform "PapersPlease_PassportMilitary";
_unit addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "greenmag_item_speedloader";
_unit addItemToUniform "kat_crossPanel";
_unit addItemToUniform "EUFOR_MedPanel";
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "ACE_salineIV_250";
for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";};
_unit addItemToVest "ACE_HuntIR_monitor";
_unit addItemToVest "kat_stethoscope";
for "_i" from 1 to 2 do {_unit addItemToVest "kat_retractor";};
for "_i" from 1 to 7 do {_unit addItemToVest "kat_scalpel";};
_unit addItemToVest "ACE_surgicalKit";
_unit addItemToVest "kat_vacuum";
_unit addItemToVest "kat_accuvac";
_unit addItemToVest "BWA3_G_Combat_clear";
_unit addItemToVest "ACE_MRE_ChickenTikkaMasala";
_unit addItemToVest "ACE_MRE_CreamTomatoSoup";
for "_i" from 1 to 2 do {_unit addItemToVest "kat_larynx";};
_unit addItemToVest "ACE_salineIV";
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_WaterBottle";};
_unit addItemToVest "kat_Pulseoximeter";
_unit addItemToVest "hlc_pistol_P226R_357Combat";
for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "hlc_100rnd_556x45_Mdim_G36";
_unit addItemToVest "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
_unit addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
_unit addItemToVest "SmokeShellBlue";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "kat_Painkiller";
_unit addItemToBackpack "H_Barett_EuDeF";
_unit addItemToBackpack "BWA3_G_Combat_black";
_unit addItemToBackpack "BWA3_G_Combat_orange";
_unit addItemToBackpack "kat_X_AED";
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_Pulseoximeter";};
_unit addItemToBackpack "kat_MFAK";
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_atropine";};
_unit addItemToBackpack "kat_ultrasound";
_unit addItemToBackpack "kat_coag_sense";
_unit addItemToBackpack "kat_BVM";
_unit addItemToBackpack "kat_fluidWarmer";
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_clamp";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_reboa";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_phenylephrineAuto";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_phenylephrine";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_nitroglycerin";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_ncdKit";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_nasal";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_nalbuphine";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_lorazepam";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_lidocaine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_larynx";};
_unit addItemToBackpack "ace_marker_flags_blue";
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_EACA";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "kat_etomidate";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_flumazenil";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_handWarmer";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_epinephrineIV";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "kat_plate";};
for "_i" from 1 to 9 do {_unit addItemToBackpack "kat_scalpel";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_TXA";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 16 do {_unit addItemToBackpack "kat_bloodIV_O_N_250";};
for "_i" from 1 to 16 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_plasmaIV_250";};
_unit addItemToBackpack "ACRE_PRC117F";
for "_i" from 1 to 13 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeYellow_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeOrange_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
_unit addItemToBackpack "kat_oxygenTank_300";
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_Penthrox";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_Carbonate";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_Caffeine";};
_unit addItemToBackpack "kat_Pervitin";
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_painkillers";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_Painkiller";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_HuntIR_M203";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "40xtra_1Rnd_40mm_msblue";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_40mm_Flare_white";};
_unit addHeadgear "PBW_Helm4_tropen_HBOD";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;