private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", true];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 1, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 1];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// Fünge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "Kompakt2"];
systemChat format ["Deine Klasse: %1", _unit getVariable "Nilia_Klasse"];

//hint
systemChat "Ausrüstung (Tropen): Breacher wurde geladen!";
[_unit] call Nilia_fnc_SetRank;


//comment "Exported from Arsenal by [OberstLt.] Nilia";

//comment "Add weapons";
_unit addWeapon "hlc_smg_mp510_grip";
_unit addPrimaryWeaponItem "ACE_muzzle_mzls_smg_01";
_unit addPrimaryWeaponItem "ACE_DBAL_A3_Green";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addPrimaryWeaponItem "hlc_30Rnd_10mm_B_MP5";
_unit addPrimaryWeaponItem "hlc_grip_PMVFG_Black";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_JHP_P226";

//comment "Add containers";
_unit forceAddUniform "W_EUFOR_Uniform_Tropen_Digital";
_unit addVest "BWA3_Vest_Rifleman_Tropen";
_unit addBackpack "EUFOR_Backpack_Tropen_Tortilia";

//comment "Add binoculars";
_unit addWeapon "Binocular";

//comment "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_splint";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "kat_larynx";};
_unit addItemToUniform "ItemcTabHCam";
_unit addItemToUniform "kat_IFAK";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_Chemlight_HiWhite";};
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToUniform "kat_Painkiller";
_unit addItemToVest "ACE_Clacker";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_splint";};
_unit addItemToVest "ACE_elasticBandage";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "hlc_12Rnd_357SIG_JHP_P226";
for "_i" from 1 to 7 do {_unit addItemToVest "hlc_30Rnd_10mm_B_MP5";};
_unit addItemToBackpack "ACE_salineIV";
_unit addItemToBackpack "ACE_salineIV_250";
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "tsp_lockpick";};
_unit addItemToBackpack "ACE_wirecutter";
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_larynx";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_WaterBottle";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_MRE_MeatballsPasta";};
_unit addItemToBackpack "rhs_weap_Izh18";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_ec200_sand_mag";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_M84";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Carbonate";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_30Rnd_10mm_B_MP5";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "rhsgref_1Rnd_Slug";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "tsp_breach_popper_auto_mag";};
_unit addItemToBackpack "kat_Painkiller";
_unit addHeadgear "PBW_Helm4_tropen_H";
_unit addGoggles "rhs_googles_clear";

//comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemMicroDAGR";

//Destroy Variables
_unit = nil;