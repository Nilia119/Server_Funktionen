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
player addWeapon "hlc_rifle_awmagnum";
player addPrimaryWeaponItem "HLC_Charm_Teethgang";
player addPrimaryWeaponItem "BWA3_optic_M5Xi_Tremor3_MicroT2";
player addPrimaryWeaponItem "hlc_5rnd_300WM_mk248_AWM";
player addWeapon "hlc_pistol_P226R_357Combat";
player addHandgunItem "hlc_12Rnd_357SIG_B_P226";

comment "Add containers";
player forceAddUniform "U_B_FullGhillie_sard";
player addVest "BWA3_Vest_Fleck";
player addBackpack "ACREFR_rt1523g_big_bwmod";

comment "Add binoculars";
player addWeapon "ACE_Vector";

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
player addItemToUniform "ACE_HuntIR_monitor";
player addItemToUniform "BWA3_DM32_Blue";
player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "ACE_salineIV_250";
player addItemToVest "ACE_RangeCard";
player addItemToVest "ACE_ATragMX";
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_DAGR";
player addItemToVest "ItemAndroid";
player addItemToVest "BWA3_optic_NSV80";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToVest "BWA3_DM51A1";
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_blue";};
player addItemToVest "B_IR_Grenade";
player addItemToVest "BWA3_DM32_Blue";
for "_i" from 1 to 3 do {player addItemToVest "hlc_5rnd_300WM_mk248_AWM";};
for "_i" from 1 to 3 do {player addItemToVest "hlc_12Rnd_357SIG_B_P226";};
player addItemToBackpack "ACE_Tripod";
player addItemToBackpack "kat_guedel";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_250";};
player addItemToBackpack "ACRE_SEM70";
player addItemToBackpack "ACRE_SEM52SL";
for "_i" from 1 to 6 do {player addItemToBackpack "hlc_5rnd_300WM_mk248_AWM";};
for "_i" from 1 to 4 do {player addItemToBackpack "hlc_5rnd_300WM_T_AWM";};
player addItemToBackpack "kat_Pulseoximeter";
player addHeadgear "BWA3_OpsCore_Tropen_Camera";
player addGoggles "rhs_googles_black";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadioAcreFlagged";
player linkItem "ItemcTab";

comment "Set identity";
[player,"9JgKp_Insignia_Jaeger"] call BIS_fnc_setUnitInsignia;
