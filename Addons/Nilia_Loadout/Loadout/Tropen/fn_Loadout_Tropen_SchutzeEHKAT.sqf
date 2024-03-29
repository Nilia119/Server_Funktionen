private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 0, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 1];    //Medic 0=0, 1=Sani, 2=Arzt

//hint
systemChat "Tropentarn Ausrüstung: Schütze-EH geladen und Rechte (Sani) gesetzt!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_rifle_416D10";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "hlc_30rnd_556x45_SOST_L5";
_unit addPrimaryWeaponItem "hlc_grip_PMVFG_Black";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_EUFOR_Uniform_Tropen";
_unit addVest "BWA3_Vest_Medic_Tropen";
_unit addBackpack "EUFOR_Backpack_Tropen_Tortilia";

// "Add items to containers";
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "ACE_salineIV_250";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACRE_PRC152";
_unit addItemToUniform "BWA3_DM32_Blue";
_unit addItemToVest "kat_stethoscope";
_unit addItemToVest "kat_crossPanel";
_unit addItemToVest "ACE_tourniquet";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_salineIV_500";};
_unit addItemToVest "ACE_salineIV_250";
for "_i" from 1 to 8 do {_unit addItemToVest "kat_IV_16";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_salineIV";};
for "_i" from 1 to 12 do {_unit addItemToVest "kat_TXA";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_adenosine";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "BWA3_DM32_Blue";
_unit addItemToVest "kat_Painkiller";
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_30rnd_556x45_t_L5";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_30rnd_556x45_SOST";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "kat_larynx";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_guedel";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_lidocaine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 7 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_Pulseoximeter";};
_unit addItemToBackpack "ACRE_PRC152";
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Painkiller";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_Carbonate";};
_unit addHeadgear "PBW_Helm4_tropen_H";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemMicroDAGR";

//Destroy Variables
_unit = nil;