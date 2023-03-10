private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_rifle_awmagnum";
_unit addPrimaryWeaponItem "HLC_Charm_Teethgang";
_unit addPrimaryWeaponItem "BWA3_optic_M5Xi_Tremor3_MicroT2";
_unit addPrimaryWeaponItem "hlc_5rnd_300WM_mk248_AWM";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "U_B_FullGhillie_lsh";
_unit addVest "BWA3_Vest_Marksman_Fleck";
_unit addBackpack "BWA3_Kitbag_Fleck";

// "Add binoculars";
_unit addWeapon "ACE_Vector";

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
_unit addItemToVest "ACE_ATragMX";
_unit addItemToVest "ACE_DAGR";
_unit addItemToVest "ACE_RangeCard";
_unit addItemToVest "ACE_Kestrel4500";
_unit addItemToVest "ItemAndroid";
_unit addItemToVest "BWA3_optic_NSV80";
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM51A1";};
_unit addItemToVest "BWA3_DM32_Blue";
for "_i" from 1 to 9 do {_unit addItemToVest "hlc_5rnd_300WM_mk248_AWM";};
_unit addItemToBackpack "ACE_salineIV";
_unit addItemToBackpack "ACE_salineIV_250";
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "kat_Pulseoximeter";
_unit addItemToBackpack "ACE_Tripod";
_unit addItemToBackpack "ACE_HuntIR_monitor";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACRE_SEM52SL";};
_unit addItemToBackpack "ACRE_SEM70";
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_5rnd_300WM_T_AWM";};
_unit addHeadgear "PBW_Helm5_fleck_H";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

// "Set identity";
[_unit,"9JgKp_Insignia_Stabsfeldwebel"] call BIS_fnc_setUnitInsignia;

//Destroy Variables
_unit = nil;