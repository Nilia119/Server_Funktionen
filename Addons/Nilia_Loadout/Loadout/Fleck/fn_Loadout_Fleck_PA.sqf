private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 0, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 0];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// Fünge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "PA"];
systemChat format ["Deine Klasse: %1", _unit getVariable "Nilia_Klasse"];

//hint
systemChat "Ausrüstung (Fleck): Panzerabwehrschütze geladen!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_smg_mp510_grip";
_unit addPrimaryWeaponItem "ACE_muzzle_mzls_smg_01";
_unit addPrimaryWeaponItem "ACE_DBAL_A3_Green";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addPrimaryWeaponItem "hlc_30Rnd_10mm_B_MP5";
_unit addPrimaryWeaponItem "hlc_grip_PMVFG_Black";
_unit addWeapon "launch_MRAWS_green_F";
_unit addSecondaryWeaponItem "MRAWS_HEAT_F";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_EUFOR_Uniform_Fleck";
_unit addVest "pbw_splitter_schtz";
_unit addBackpack "EUFOR_Backpack_Fleck_Tortilia";

// "Add binoculars";
_unit addWeapon "Binocular";

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
for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_WaterBottle";};
_unit addItemToVest "kat_Pulseoximeter";
_unit addItemToVest "kat_larynx";
_unit addItemToVest "ACE_salineIV_250";
_unit addItemToVest "ACE_salineIV";
_unit addItemToVest "ACE_MRE_ChickenHerbDumplings";
_unit addItemToVest "ACE_MRE_LambCurry";
for "_i" from 1 to 2 do {_unit addItemToVest "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "kat_Painkiller";
_unit addItemToVest "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 8 do {_unit addItemToVest "hlc_30Rnd_10mm_B_MP5";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "MRAWS_HEAT_F";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HE_F";};
_unit addHeadgear "PBW_Helm1_fleck_H";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemMicroDAGR";

//Destroy Variables
_unit = nil;