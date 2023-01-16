comment "Exported from Arsenal by [OberstLt.] Nilia";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "hlc_rifle_G36V";
player addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
player addPrimaryWeaponItem "ACE_acc_pointer_green";
player addPrimaryWeaponItem "optic_Hamr";
player addPrimaryWeaponItem "hlc_30rnd_556x45_EPR_G36";
player addWeapon "hlc_pistol_P226R_357Combat";
player addHandgunItem "hlc_12Rnd_357SIG_B_P226";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Tropen";
player addVest "BWA3_Vest_Rifleman_Tropen";
player addBackpack "BWA3_AssaultPack_Tropen";

comment "Add items to containers";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_splint";};
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_epinephrine";};
player addItemToUniform "BWA3_DM32_Blue";
player addItemToVest "kat_guedel";
for "_i" from 1 to 10 do {player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 5 do {player addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {player addItemToVest "hlc_30rnd_556x45_Tracers_G36";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
player addItemToVest "B_IR_Grenade";
player addItemToBackpack "ACE_salineIV";
player addItemToBackpack "ACE_salineIV_250";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "kat_Pulseoximeter";
for "_i" from 1 to 2 do {player addItemToBackpack "ACRE_SEM52SL";};
player addHeadgear "BWA3_OpsCore_Tropen_Camera";
player addGoggles "rhs_googles_clear";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadioAcreFlagged";

comment "Set identity";
[player,"9JgKp_Insignia_Jaeger"] call BIS_fnc_setUnitInsignia;
