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
player addWeapon "hlc_lmg_MG3KWS";
player addPrimaryWeaponItem "ACE_acc_pointer_green";
player addPrimaryWeaponItem "rhsusf_acc_su230a_mrds";
player addPrimaryWeaponItem "hlc_100Rnd_762x51_Barrier_MG3";
player addWeapon "hlc_pistol_P226R_357Combat";
player addHandgunItem "hlc_12Rnd_357SIG_B_P226";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Tropen";
player addVest "BWA3_Vest_MachineGunner_Tropen";
player addBackpack "BWA3_PatrolPack_Tropen";

comment "Add binoculars";
player addWeapon "Binocular";

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
player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "ACE_salineIV_250";
for "_i" from 1 to 9 do {player addItemToVest "ACE_elasticBandage";};
player addItemToVest "kat_guedel";
for "_i" from 1 to 2 do {player addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
player addItemToVest "B_IR_Grenade";
player addItemToVest "hlc_100Rnd_762x51_M_MG3";
player addItemToVest "hlc_50Rnd_762x51_Barrier_MG3";
player addItemToBackpack "ACE_elasticBandage";
player addItemToBackpack "kat_Pulseoximeter";
for "_i" from 1 to 2 do {player addItemToBackpack "ACRE_SEM52SL";};
player addItemToBackpack "ACE_SpareBarrel";
for "_i" from 1 to 5 do {player addItemToBackpack "hlc_100Rnd_762x51_M_MG3";};
player addHeadgear "BWA3_OpsCore_Tropen_Camera";
player addGoggles "rhs_googles_clear";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadioAcreFlagged";

comment "Set identity";
[player,"9JgKp_Insignia_Gefreiter"] call BIS_fnc_setUnitInsignia;
