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

//hint
systemChat "Tropentarn Ausrüstung: Breacher wurde geladen!";
[_unit] call Nilia_fnc_SetRank;


//comment "Exported from Arsenal by [OberstLt.] Nilia";

//comment "Add weapons";
_unit addWeapon "hlc_rifle_416D145";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "hlc_30rnd_556x45_SOST_L5";
_unit addPrimaryWeaponItem "hlc_grip_PMVFG_Black";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_JHP_P226";

//comment "Add containers";
_unit forceAddUniform "W_BW2035_Uniform_Fleck";
_unit addVest "BWA3_Vest_Rifleman_Fleck";
_unit addBackpack "BWA3_Carryall_Fleck";

//comment "Add binoculars";
_unit addWeapon "Rangefinder";

//comment "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "kat_larynx";};
_unit addItemToUniform "ItemcTabHCam";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_Chemlight_HiWhite";};
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToUniform "hlc_30rnd_556x45_SOST_L5";
_unit addItemToUniform "kat_Painkiller";
_unit addItemToVest "ACE_Clacker";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_splint";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30rnd_556x45_SOST_L5";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30rnd_556x45_t_L5";};
_unit addItemToVest "BWA3_DM32_Blue";
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_12Rnd_357SIG_JHP_P226";};
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
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACRE_PRC152";};
_unit addItemToBackpack "CUP_sgun_M1014_Entry_vfg";
for "_i" from 1 to 2 do {_unit addItemToBackpack "40xtra_6Rnd_12g_buckshotslug";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "tsp_frameCharge_mag";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "tsp_popperCharge_mag";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_ec200_sand_mag";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_M84";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Carbonate";};
_unit addItemToBackpack "kat_Painkiller";
_unit addHeadgear "PBW_Helm1_fleck_H";
_unit addGoggles "rhs_googles_clear";

//comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemMicroDAGR";

//Destroy Variables
_unit = nil;