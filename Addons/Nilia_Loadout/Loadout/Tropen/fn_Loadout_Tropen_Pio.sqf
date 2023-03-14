private _unit = player;
_unit setUnitLoadout (configFile >> "EmptyLoadout");
// "Exported from Arsenal by [OberstLt.] Nilia";

comment "Add weapons";
_unit addWeapon "hlc_rifle_G36C";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "hlc_30rnd_556x45_EPR_G36";
_unit addWeapon "ACE_VMH3";

comment "Add containers";
_unit forceAddUniform "BWA3_Uniform_Tropen";
_unit addVest "BWA3_Vest_Grenadier_Tropen";
_unit addBackpack "BWA3_Carryall_Tropen";

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
_unit addItemToUniform "BWA3_DM32_Blue";
_unit addItemToVest "ACE_EntrenchingTool";
_unit addItemToVest "ACE_salineIV_250";
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_30rnd_556x45_Tracers_G36";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
_unit addItemToVest "B_IR_Grenade";
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "ACE_DefusalKit";
_unit addItemToBackpack "ToolKit";
_unit addItemToBackpack "ACE_wirecutter";
_unit addItemToBackpack "ACE_M26_Clacker";
_unit addItemToBackpack "kat_guedel";
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_elasticBandage";};
_unit addItemToBackpack "kat_Pulseoximeter";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACRE_SEM52SL";};
_unit addItemToBackpack "hlc_pistol_P226R_357Combat";
for "_i" from 1 to 4 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_30rnd_556x45_EPR_G36";};
_unit addHeadgear "PBW_Helm4_tropen_H";
_unit addGoggles "rhs_googles_clear";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

comment "Set identity";
[_unit,"9JgKp_Insignia_Hauptgefreiter"] call BIS_fnc_setUnitInsignia;

//Destroy Variables
_unit = nil;