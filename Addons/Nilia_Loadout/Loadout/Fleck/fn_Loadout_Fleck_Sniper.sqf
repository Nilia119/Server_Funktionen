private _unit = player;
_unit setUnitLoadout (configFile >> "EmptyLoadout");
// "Exported from Arsenal by [OberstLt.] Nilia";

comment "Add weapons";
_unit addWeapon "hlc_rifle_awmagnum";
_unit addPrimaryWeaponItem "HLC_Charm_Teethgang";
_unit addPrimaryWeaponItem "BWA3_optic_M5Xi_Tremor3_MicroT2";
_unit addPrimaryWeaponItem "hlc_5rnd_300WM_mk248_AWM";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

comment "Add containers";
_unit forceAddUniform "U_B_FullGhillie_sard";
_unit addVest "BWA3_Vest_Fleck";
_unit addBackpack "ACREFR_rt1523g_big_bwmod";

comment "Add binoculars";
_unit addWeapon "ACE_Vector";

comment "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "ACE_HuntIR_monitor";
_unit addItemToUniform "BWA3_DM32_Blue";
_unit addItemToVest "ACE_EntrenchingTool";
_unit addItemToVest "ACE_salineIV_250";
_unit addItemToVest "ACE_RangeCard";
_unit addItemToVest "ACE_ATragMX";
_unit addItemToVest "ACE_Kestrel4500";
_unit addItemToVest "ACE_DAGR";
_unit addItemToVest "ItemAndroid";
_unit addItemToVest "BWA3_optic_NSV80";
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
_unit addItemToVest "BWA3_DM51A1";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "BWA3_DM32_Blue";
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_5rnd_300WM_mk248_AWM";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
_unit addItemToBackpack "ACE_Tripod";
_unit addItemToBackpack "kat_guedel";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_250";};
_unit addItemToBackpack "ACRE_SEM70";
_unit addItemToBackpack "ACRE_SEM52SL";
for "_i" from 1 to 6 do {_unit addItemToBackpack "hlc_5rnd_300WM_mk248_AWM";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_5rnd_300WM_T_AWM";};
_unit addItemToBackpack "kat_Pulseoximeter";
_unit addHeadgear "PBW_Helm1_fleck_H";
_unit addGoggles "rhs_googles_black";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

comment "Set identity";
[_unit,"9JgKp_Insignia_Jaeger"] call BIS_fnc_setUnitInsignia;

//Destroy Variables
_unit = nil;