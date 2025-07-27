private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 2, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 0];    //Medic 0=0, 1=Sani, 2=Arzt

//hint
systemChat "Ausrüstung: Helikopterpilot geladen!";
[_unit] call Nilia_fnc_SetRank;

// "Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_smg_mp510_grip";
_unit addPrimaryWeaponItem "ACE_muzzle_mzls_smg_01";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_Holosight_blk_F";
_unit addPrimaryWeaponItem "hlc_30Rnd_10mm_JHP_MP5";
_unit addPrimaryWeaponItem "hlc_grip_PMVFG_Black";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "U_B_HeliPilotCoveralls";
_unit addVest "pbw_splitter_zivil";
_unit addBackpack "ACREFR_rt1523g_big_bwmod";

// "Add binoculars";
_unit addWeapon "Binocular";

// "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "kat_larynx";};
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ItemcTabHCam";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_weap_rsp30_green";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
_unit addItemToVest "B_IR_Grenade";
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_30Rnd_10mm_JHP_MP5";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";
_unit addItemToBackpack "kat_Pulseoximeter";
_unit addItemToBackpack "ACE_salineIV_250";
_unit addItemToBackpack "ACE_salineIV";
_unit addItemToBackpack "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACRE_PRC152";};
_unit addItemToBackpack "ACRE_PRC117F";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellOrange";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellYellow";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_Chemlight_IR";};
_unit addHeadgear "H_PilotHelmetHeli_O";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
_unit linkItem "ItemRadioAcreFlagged";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;
