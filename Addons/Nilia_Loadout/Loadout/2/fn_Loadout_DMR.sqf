params ["_target", "_caller", "_actionId", "_farbe"];
private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 1, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 0];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// TODO: Füge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "DMR"];
_unit setVariable ["Nilia_Waffenklasse", "DMR"];
systemChat format ["Deine Klasse: %1, Deine Waffenklasse: %2", _unit getVariable "Nilia_Klasse", _unit getVariable "Nilia_Waffenklasse"];

// Farbspezifische Items hinzufügen:
switch (true) do {
default {
_unit forceAddUniform "EUFOR_Uniforms_Fleck";
_unit addVest "EUFOR_Vest_Carrier_2_Fleck";
_unit addBackpack "EUFOR_Backpacks_Compact_Fleck";
_unit addHeadgear "EUFOR_Helmets_Boonie_Spec_Fleck";
_unit addWeapon "hlc_wp_SSR_Blk";
_unit addPrimaryWeaponItem "hlc_20Rnd_762x51_T_SCARH";
_unit addPrimaryWeaponItem "bipod_01_F_blk";
for "_i" from 1 to 9 do {_unit addItemToVest "hlc_20Rnd_762x51_T_SCARH";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_20Rnd_762x51_TDim_SCARH";};
_farbe = "Flecktarn";
};
case ("Tropen" in _farbe): {
_unit forceAddUniform "EUFOR_Uniforms_TropenD";
_unit addVest "EUFOR_Vest_Carrier_2_Tropen_Digital";
_unit addBackpack "EUFOR_Backpacks_Compact_TropenD";
_unit addHeadgear "EUFOR_Helmets_Boonie_Spec_TropenD";
_unit addWeapon "hlc_WP_SSR";
_unit addPrimaryWeaponItem "hlc_20Rnd_762x51_T_SCARH_tan";
_unit addPrimaryWeaponItem "bipod_01_F_snd";
for "_i" from 1 to 9 do {_unit addItemToVest "hlc_20Rnd_762x51_T_SCARH_tan";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_20Rnd_762x51_TDim_SCARH_tan";};
_farbe = "Tropentarn";
};
case ("Schnee" in _farbe): {
_unit forceAddUniform "EUFOR_Uniforms_Schnee";
_unit addVest "EUFOR_Vest_Carrier_2_Schnee";
_unit addBackpack "EUFOR_Backpacks_Compact_Schnee";
_unit addHeadgear "EUFOR_Helmets_Boonie_Spec_Schnee";
_unit addWeapon "hlc_wp_SSR_Blk";
_unit addPrimaryWeaponItem "hlc_20Rnd_762x51_T_SCARH";
_unit addPrimaryWeaponItem "bipod_01_F_blk";
for "_i" from 1 to 9 do {_unit addItemToVest "hlc_20Rnd_762x51_T_SCARH";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_20Rnd_762x51_TDim_SCARH";};
_farbe = "Schneetarn";
};
case ("Multi" in _farbe): {
_unit forceAddUniform "EUFOR_Uniforms_Multi";
_unit addVest "EUFOR_Vest_Carrier_2_Multi";
_unit addBackpack "EUFOR_Backpacks_Compact_Multi";
_unit addHeadgear "EUFOR_Helmets_Boonie_Spec_Multi";
_unit addWeapon "hlc_wp_SSR_camo";
_unit addPrimaryWeaponItem "hlc_20Rnd_762x51_T_SCARH_camo";
_unit addPrimaryWeaponItem "bipod_01_F_blk";
for "_i" from 1 to 9 do {_unit addItemToVest "hlc_20Rnd_762x51_T_SCARH_camo";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "hlc_20Rnd_762x51_TDim_SCARH_camo";};
_farbe = "Multitarn";
};};

//hint
systemChat format ["Ausrüstung (%1): DMR-Schütze wird geladen und Reparaturrechte wurden vergeben!", _farbe];
[_unit] call Nilia_fnc_SetRank;

// "Add weapons";
_unit addPrimaryWeaponItem "hlc_muzzle_FSC30";
_unit addPrimaryWeaponItem "ACE_DBAL_A3_Green";
_unit addPrimaryWeaponItem "hlc_optic_ATACR_Offset";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "Laserdesignator";

// "Add items to containers";
_unit addItemToUniform "kat_IFAK";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "kat_larynx";
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_EntrenchingTool";
_unit addItemToUniform "PapersPlease_PassportMilitary";
_unit addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "greenmag_item_speedloader";
_unit addItemToUniform "ACE_EHP";
_unit addItemToUniform "ACE_RangeCard";
for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_WaterBottle";};
_unit addItemToVest "kat_Pulseoximeter";
_unit addItemToVest "kat_larynx";
_unit addItemToVest "ACE_salineIV_250";
_unit addItemToVest "ACE_salineIV";
_unit addItemToVest "ACE_MRE_CreamTomatoSoup";
_unit addItemToVest "ACE_MRE_LambCurry";
for "_i" from 1 to 2 do {_unit addItemToVest "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "kat_Painkiller";
_unit addItemToVest "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
_unit addItemToBackpack "advrepair_ToolkitLight";
for "_i" from 1 to 4 do {_unit addItemToBackpack "advrepair_SpareParts";};
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemMicroDAGR";

//Destroy Variables
_unit = nil;
_farbe = nil;