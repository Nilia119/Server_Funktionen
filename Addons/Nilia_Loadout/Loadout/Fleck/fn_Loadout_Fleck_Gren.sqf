private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_rifle_416D145_gl";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "hlc_30rnd_556x45_SOST_L5";
_unit addPrimaryWeaponItem "rhs_mag_M433_HEDP";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_BW2035_Uniform_Fleck";
_unit addVest "BWA3_Vest_Grenadier_Fleck";
_unit addBackpack "BWA3_TacticalPack_Fleck";

// "Add binoculars";
_unit addWeapon "Rangefinder";

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
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM51A1";};
_unit addItemToVest "BWA3_DM32_Blue";
_unit addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30rnd_556x45_SOST_L5";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30rnd_556x45_t_L5";};
_unit addItemToBackpack "ACE_HuntIR_monitor";
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "ACE_salineIV";
_unit addItemToBackpack "ACE_salineIV_250";
_unit addItemToBackpack "kat_Pulseoximeter";
_unit addItemToBackpack "BWA3_DM32_Green";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACRE_SEM52SL";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_HuntIR_M203";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_40mm_Flare_white";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeYellow_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeOrange_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "40xtra_1Rnd_40mm_msblue";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m576";};
_unit addHeadgear "PBW_Helm4_fleck_H";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

// "Set identity";
[_unit,"9JgKp_Insignia_Unteroffizier"] call BIS_fnc_setUnitInsignia;

//Destroy Variables
_unit = nil;