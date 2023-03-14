private _unit = player;
_unit setUnitLoadout (configFile >> "EmptyLoadout");
// "Exported from Arsenal by [OberstLt.] Nilia";

comment "Add weapons";
_unit addWeapon "hlc_rifle_SG551LB_TAC_GL";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_ERCO_blk_F";
_unit addPrimaryWeaponItem "hlc_30Rnd_556x45_SPR_sg550";
_unit addPrimaryWeaponItem "rhs_mag_M433_HEDP";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "HLC_optic_ATT";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

comment "Add containers";
_unit forceAddUniform "BWA3_Uniform_Tropen";
_unit addVest "BWA3_Vest_Leader_Tropen";
_unit addBackpack "ACREFR_rt1523g_big_bwmod_tropen";

comment "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "Laserdesignator_01_khk_F";

comment "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 19 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToVest "ItemAndroid";
_unit addItemToVest "kat_guedel";
_unit addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_30Rnd_556x45_SPR_sg550";};
for "_i" from 1 to 4 do {_unit addItemToVest "hlc_30Rnd_556x45_T_sg550";};
_unit addItemToBackpack "ACE_HuntIR_monitor";
_unit addItemToBackpack "NVGogglesB_gry_F";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_250";};
_unit addItemToBackpack "BWA3_Beret_Jaeger";
_unit addItemToBackpack "BWA3_G_Combat_clear";
_unit addItemToBackpack "BWA3_G_Combat_black";
_unit addItemToBackpack "BWA3_G_Combat_orange";
_unit addItemToBackpack "kat_X_AED";
_unit addItemToBackpack "ACRE_SEM70";
for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM25";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeYellow_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeOrange_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
_unit addHeadgear "PBW_Helm4_tropen_H";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

comment "Set identity";
[_unit,"9Jgkp_Insignia_Leutnant"] call BIS_fnc_setUnitInsignia;//Destroy Variables
_unit = nil;