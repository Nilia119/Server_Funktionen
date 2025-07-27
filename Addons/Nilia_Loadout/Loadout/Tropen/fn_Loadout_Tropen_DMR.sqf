private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 1, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 0];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// Fünge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "DMR"];
systemChat format ["Deine Klasse: %1", _unit getVariable "Nilia_Klasse"];

//hint
systemChat "Ausrüstung (Tropen): DMR-Schütze geladen!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_WP_SSR";
_unit addPrimaryWeaponItem "hlc_muzzle_FSC30";
_unit addPrimaryWeaponItem "ACE_DBAL_A3_Green";
_unit addPrimaryWeaponItem "hlc_optic_ATACR_Offset";
_unit addPrimaryWeaponItem "hlc_20Rnd_762x51_T_SCARH_tan";
_unit addPrimaryWeaponItem "bipod_01_F_snd";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_EUFOR_Uniform_Tropen_Digital";
_unit addVest "BWA3_Vest_Marksman_Tropen";
_unit addBackpack "EUFOR_Backpack_Tropen_Tortilia";

// "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "Laserdesignator";

// "Add items to containers";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_splint";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 8 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ItemcTabHCam";
_unit addItemToUniform "ACE_RangeCard";
_unit addItemToUniform "kat_larynx";
_unit addItemToUniform "kat_IFAK";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_Chemlight_HiWhite";};
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
_unit addItemToVest "ACE_salineIV_250";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";
_unit addItemToVest "SmokeShellBlue";
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_20Rnd_762x51_TDim_SCARH_tan";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_20Rnd_762x51_T_SCARH_tan";};
_unit addItemToBackpack "kat_Pulseoximeter";
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "ACE_salineIV";
_unit addItemToBackpack "ACE_MRE_CreamTomatoSoup";
_unit addItemToBackpack "ACE_MRE_LambCurry";
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_WaterBottle";};
_unit addItemToBackpack "ToolKit";
for "_i" from 1 to 6 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_SCARH_tan";};
_unit addHeadgear "PBW_Helm4_tropen_H";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemMicroDAGR";

//Destroy Variables
_unit = nil;