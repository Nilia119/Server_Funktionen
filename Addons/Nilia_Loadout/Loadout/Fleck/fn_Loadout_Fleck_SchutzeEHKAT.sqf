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
player addWeapon "hlc_rifle_G36C";
player addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
player addPrimaryWeaponItem "ACE_acc_pointer_green";
player addPrimaryWeaponItem "optic_Hamr";
player addPrimaryWeaponItem "hlc_30rnd_556x45_EPR_G36";
player addWeapon "hlc_pistol_P226R_357Combat";
player addHandgunItem "hlc_12Rnd_357SIG_B_P226";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Medic_Fleck";
player addBackpack "BWA3_Carryall_Fleck";

comment "Add items to containers";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "Nilia_MedPanel";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_splint";};
player addItemToUniform "ACE_salineIV_250";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACRE_SEM52SL";
player addItemToUniform "BWA3_DM32_Blue";
player addItemToVest "kat_stethoscope";
player addItemToVest "kat_crossPanel";
player addItemToVest "ACE_tourniquet";
for "_i" from 1 to 2 do {player addItemToVest "ACE_salineIV_500";};
player addItemToVest "ACE_salineIV_250";
for "_i" from 1 to 8 do {player addItemToVest "kat_IV_16";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_salineIV";};
for "_i" from 1 to 12 do {player addItemToVest "kat_TXA";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_adenosine";};
for "_i" from 1 to 2 do {player addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {player addItemToVest "hlc_30rnd_556x45_Tracers_G36";};
for "_i" from 1 to 2 do {player addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
player addItemToVest "B_IR_Grenade";
player addItemToVest "BWA3_DM32_Blue";
player addItemToVest "kat_Painkiller";
for "_i" from 1 to 10 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 12 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_guedel";};
for "_i" from 1 to 8 do {player addItemToBackpack "kat_lidocaine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 30 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 6 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_Pulseoximeter";};
player addItemToBackpack "ACRE_SEM52SL";
for "_i" from 1 to 2 do {player addItemToBackpack "kat_Painkiller";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_Carbonate";};
player addHeadgear "PBW_Helm1_fleck_H";
player addGoggles "rhs_googles_clear";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadioAcreFlagged";

comment "Set identity";
[player,"9JgKp_Insignia_Gefreiter"] call BIS_fnc_setUnitInsignia;
