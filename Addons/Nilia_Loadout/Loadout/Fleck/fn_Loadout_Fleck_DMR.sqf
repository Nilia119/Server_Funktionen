private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_rifle_g3sg1ris";
_unit addPrimaryWeaponItem "hlc_muzzle_FSC30";
_unit addPrimaryWeaponItem "hlc_optic_ATACR_Offset";
_unit addPrimaryWeaponItem "hlc_20rnd_762x51_T_G3";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_BW2035_Uniform_Fleck";
_unit addVest "BWA3_Vest_Marksman_Fleck";
_unit addBackpack "BWA3_AssaultPack_Fleck";

// "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "Laserdesignator";

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
_unit addItemToUniform "ACE_RangeCard";
_unit addItemToUniform "ACE_Kestrel4500";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_Chemlight_HiWhite";};
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";
for "_i" from 1 to 5 do {_unit addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM51A1";};
_unit addItemToVest "BWA3_DM32_Blue";
_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_20rnd_762x51_T_G3";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_20rnd_762x51_IRDim_G3";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_elasticBandage";};
_unit addItemToBackpack "kat_Pulseoximeter";
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "ACE_salineIV_250";
_unit addItemToBackpack "ACE_salineIV";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACRE_SEM52SL";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "hlc_20rnd_762x51_T_G3";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_20rnd_762x51_IRDim_G3";};
_unit addHeadgear "PBW_Helm1_fleck_H";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

// "Set identity";
[_unit,"9JgKp_Insignia_Jaeger"] call BIS_fnc_setUnitInsignia;

//Destroy Variables
_unit = nil;