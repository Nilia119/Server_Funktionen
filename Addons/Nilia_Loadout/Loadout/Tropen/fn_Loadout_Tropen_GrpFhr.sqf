private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en","ar"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 0, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 0];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// Fünge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "Standard"];
systemChat format ["Deine Klasse: %1", _unit getVariable "Nilia_Klasse"];

//hint
systemChat "Ausrüstung (Tropen): Gruppenführer geladen!";
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
_unit forceAddUniform "W_EUFOR_Uniform_Tropen_Digital";
_unit addVest "BWA3_Vest_Leader_Tropen";
_unit addBackpack "ACREFR_rt1523g_big_bwmod_tropen";

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
_unit addItemToUniform "ACE_splint";
_unit addItemToUniform "kat_larynx";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";};
_unit addItemToUniform "hlc_30rnd_556x45_SOST_L5";
_unit addItemToVest "ItemAndroid";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30rnd_556x45_t_L5";};
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_30rnd_556x45_SOST_L5";};
_unit addItemToBackpack "ACE_salineIV";
_unit addItemToBackpack "ACE_salineIV_250";
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "kat_Pulseoximeter";
_unit addItemToBackpack "kat_larynx";
_unit addItemToBackpack "ACE_splint";
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_WaterBottle";};
_unit addItemToBackpack "ACE_MRE_ChickenTikkaMasala";
_unit addItemToBackpack "ACE_MRE_SteakVegetables";
_unit addItemToBackpack "ACE_HuntIR_monitor";
_unit addItemToBackpack "ace_flags_blue";
_unit addItemToBackpack "ACE_SpraypaintBlue";
_unit addItemToBackpack "ACE_SpraypaintYellow";
_unit addItemToBackpack "ACE_SpraypaintGreen";
_unit addItemToBackpack "ACE_SpraypaintRed";
_unit addItemToBackpack "ACE_SpraypaintBlack";
_unit addItemToBackpack "ACE_SpraypaintWhite";
_unit addItemToBackpack "KNB_Notebook";
_unit addItemToBackpack "PBW_muetze1_tropen";
_unit addItemToBackpack "ACRE_PRC117F";
_unit addItemToBackpack "hlc_30rnd_556x45_SOST_L5";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellYellow";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellOrange";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "tsp_flashbang_cts2";};
_unit addHeadgear "PBW_Helm4_tropen_HBO";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;
