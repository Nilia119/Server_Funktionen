private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Loadout Fixen!

// Set ACRE Babble Language
["en"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 0, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 1];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// Fünge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "Standard"];
systemChat format ["Deine Klasse: %1", _unit getVariable "Nilia_Klasse"];

//hint
systemChat "Ausrüstung (Fleck): Schütze-EH geladen und Rechte (Sani) gesetzt!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_rifle_416D145_grip";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_DBAL_A3_Green";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "hlc_30rnd_556x45_SOST_L5";
_unit addPrimaryWeaponItem "hlc_grip_PMVFG_Black";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_EUFOR_Uniform_Fleck";
_unit addVest "pbw_splitter_sani";
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
_unit addItemToUniform "ACE_splint";
_unit addItemToUniform "kat_larynx";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";};
_unit addItemToUniform "hlc_30rnd_556x45_SOST_L5";
_unit addItemToVest "kat_stethoscope";
for "_i" from 1 to 5 do {_unit addItemToVest "kat_IV_16";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30rnd_556x45_t_L5";};
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_30rnd_556x45_SOST_L5";};
for "_i" from 1 to 26 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_WaterBottle";};
_unit addItemToBackpack "ACE_MRE_ChickenTikkaMasala";
_unit addItemToBackpack "ACE_MRE_CreamTomatoSoup";
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "kat_larynx";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "kat_TXA";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_IV_16";};
_unit addItemToBackpack "kat_AFAK";
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_ncdKit";};
_unit addItemToBackpack "kat_BVM";
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_bloodIV_O_N_250";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_Carbonate";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_Painkiller";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_painkillers";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_Caffeine";};
_unit addHeadgear "PBW_Helm1_fleck_H";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemMicroDAGR";

//Destroy Variables
_unit = nil;