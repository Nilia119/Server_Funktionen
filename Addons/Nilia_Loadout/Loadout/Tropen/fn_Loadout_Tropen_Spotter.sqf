private _unit = player;
_unit setUnitLoadout (configFile >> "EmptyLoadout");
// "Exported from Arsenal by [OberstLt.] Nilia";

comment "Add weapons";
_unit addWeapon "hlc_rifle_G36V";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "hlc_30rnd_556x45_EPR_G36";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

comment "Add containers";
_unit forceAddUniform "U_B_FullGhillie_ard";
_unit addVest "BWA3_Vest_Tropen";
_unit addBackpack "BWA3_Carryall_Tropen";

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
for "_i" from 1 to 2 do {_unit addItemToVest "kat_IV_16";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_30rnd_556x45_Tracers_G36";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
_unit addItemToVest "BWA3_DM51A1";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "BWA3_DM32_Blue";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_salineIV_250";};
_unit addItemToBackpack "ACE_DAGR";
_unit addItemToBackpack "ACE_Kestrel4500";
_unit addItemToBackpack "ACE_surgicalKit";
_unit addItemToBackpack "ItemAndroid";
_unit addItemToBackpack "ACE_ATragMX";
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_larynx";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_lidocaine";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_atropine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_nitroglycerin";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_phenylephrine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_TXA";};
_unit addItemToBackpack "kat_X_AED";
_unit addItemToBackpack "kat_accuvac";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACRE_SEM52SL";};
_unit addHeadgear "PBW_Helm4_tropen_H";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

comment "Set identity";
[_unit,"9Jgkp_Insignia_Nilia"] call BIS_fnc_setUnitInsignia;

//Destroy Variables
_unit = nil;