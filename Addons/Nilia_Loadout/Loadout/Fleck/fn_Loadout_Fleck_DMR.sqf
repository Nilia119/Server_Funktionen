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
player addWeapon "hlc_rifle_PSG1A1_RIS";
player addPrimaryWeaponItem "hlc_optic_ATACR_Offset";
player addPrimaryWeaponItem "hlc_20rnd_762x51_Mk316_G3";
player addPrimaryWeaponItem "BWA3_bipod_Harris";
player addWeapon "hlc_pistol_P226R_357Combat";
player addHandgunItem "hlc_12Rnd_357SIG_B_P226";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Marksman_Fleck";
player addBackpack "BWA3_AssaultPack_Fleck";

comment "Add binoculars";
player addMagazine "Laserbatteries";
player addWeapon "Laserdesignator";

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
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_RangeCard";
player addItemToVest "kat_guedel";
for "_i" from 1 to 2 do {player addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
player addItemToVest "B_IR_Grenade";
for "_i" from 1 to 3 do {player addItemToVest "hlc_20rnd_762x51_Mk316_G3";};
player addItemToVest "hlc_20rnd_762x51_T_G3";
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACRE_SEM52SL";};
for "_i" from 1 to 5 do {player addItemToBackpack "hlc_20rnd_762x51_T_G3";};
for "_i" from 1 to 2 do {player addItemToBackpack "hlc_20rnd_762x51_Mk316_G3";};
player addItemToBackpack "kat_Pulseoximeter";
player addHeadgear "BWA3_OpsCore_Fleck_Camera";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadioAcreFlagged";

comment "Set identity";
[player,"9JgKp_Insignia_Jaeger"] call BIS_fnc_setUnitInsignia;
