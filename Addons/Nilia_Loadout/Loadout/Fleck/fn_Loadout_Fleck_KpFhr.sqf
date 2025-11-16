private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Loadout Fixen!

// Set ACRE Babble Language
["en","gr","ru","ar"] call acre_api_fnc_babelSetSpokenLanguages;
["en","gr","ru","ar"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", true];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 2, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 2];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// Fünge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "ULG"];
systemChat format ["Deine Klasse: %1", _unit getVariable "Nilia_Klasse"];

//hint
systemChat "Ausrüstung (Fleck): KpFhr geladen, sprachen konfiguriert und alle Rechte gesetzt!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_rifle_SG551LB_TAC_GL";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "acc_pointer_blue";
_unit addPrimaryWeaponItem "optic_ERCO_blk_F";
_unit addPrimaryWeaponItem "hlc_30Rnd_556x45_SPR_sg550";
_unit addPrimaryWeaponItem "rhs_mag_M433_HEDP";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "HLC_optic_ATT";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_EUFOR_Uniform_Fleck";
_unit addVest "pbw_splitter_grpfhr";
_unit addBackpack "ACREFR_rt1523g_big_bwmod";

// "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "Laserdesignator";

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
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "ACE_WaterBottle";
_unit addItemToUniform "kat_crossPanel";
_unit addItemToUniform "EUFOR_MedPanel";
for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";};
_unit addItemToUniform "kat_Painkiller";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_WaterBottle";};
_unit addItemToVest "kat_Pulseoximeter";
_unit addItemToVest "kat_larynx";
_unit addItemToVest "ACE_salineIV_250";
_unit addItemToVest "ACE_salineIV";
_unit addItemToVest "ACE_MRE_CreamTomatoSoup";
_unit addItemToVest "ACE_MRE_ChickenTikkaMasala";
_unit addItemToVest "ACE_HuntIR_monitor";
_unit addItemToVest "kat_X_AED";
_unit addItemToVest "kat_vacuum";
_unit addItemToVest "kat_BVM";
_unit addItemToVest "kat_coag_sense";
_unit addItemToVest "kat_ultrasound";
_unit addItemToVest "kat_fluidWarmer";
for "_i" from 1 to 2 do {_unit addItemToVest "kat_clamp";};
for "_i" from 1 to 2 do {_unit addItemToVest "kat_retractor";};
for "_i" from 1 to 2 do {_unit addItemToVest "kat_reboa";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "kat_Painkiller";
for "_i" from 1 to 2 do {_unit addItemToVest "kat_Caffeine";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
_unit addItemToVest "hlc_30Rnd_556x45_T_sg550";
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_30Rnd_556x45_SPR_sg550";};
_unit addItemToVest "ACE_painkillers";
_unit addItemToVest "kat_Pervitin";
_unit addItemToBackpack "NVGogglesB_gry_F";
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_250";};
_unit addItemToBackpack "H_Barett_EuDeF";
_unit addItemToBackpack "rhs_googles_orange";
_unit addItemToBackpack "rhs_googles_black";
_unit addItemToBackpack "rhs_googles_clear";
_unit addItemToBackpack "kat_stethoscope";
_unit addItemToBackpack "kat_MFAK";
_unit addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_aatKit";};
_unit addItemToBackpack "kat_accuvac";
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_bloodIV_O_N_250";};
for "_i" from 1 to 9 do {_unit addItemToBackpack "kat_TXA";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_EACA";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_etomidate";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_flumazenil";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_epinephrineIV";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_plate";};
_unit addItemToBackpack "ACRE_PRC117F";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeOrange_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeYellow_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
_unit addItemToBackpack "kat_oxygenTank_300";
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_Penthrox";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Carbonate";};
_unit addHeadgear "PBW_Helm4_fleck_HBOD";
_unit addGoggles "rhs_googles_yellow";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "KAT_STS";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;