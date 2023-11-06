private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 0, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 2];    //Medic 0=0, 1=Sani, 2=Arzt

//hint
systemChat "Flecktarn Ausrüstung: Sani geladen und Rechte (Arzt) gesetzt!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_rifle_416D10_grip";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "hlc_30rnd_556x45_SOST_L5";
_unit addPrimaryWeaponItem "hlc_grip_PMVFG_Black";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_BW2035_Uniform_Fleck";
_unit addVest "BWA3_Vest_Medic_Fleck";
_unit addBackpack "BWA3_Kitbag_Fleck_Medic";

// "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "kat_larynx";};
_unit addItemToUniform "ItemcTabHCam";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_Chemlight_HiWhite";};
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToUniform "hlc_30rnd_556x45_SOST_L5";
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_salineIV_250";};
for "_i" from 1 to 5 do {_unit addItemToVest "ACE_morphine";};
for "_i" from 1 to 8 do {_unit addItemToVest "ACE_fieldDressing";};
_unit addItemToVest "ACE_EntrenchingTool";
_unit addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_salineIV";};
_unit addItemToVest "ACE_salineIV_500";
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "BWA3_DM32_Blue";
_unit addItemToVest "rhs_mag_m67";
for "_i" from 1 to 9 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 11 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACRE_PRC152";};
_unit addHeadgear "PBW_Helm4_fleck_H";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemAndroid";

//Destroy Variables
_unit = nil;