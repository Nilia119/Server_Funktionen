params ["_target", "_caller", "_actionId", "_farbe"];
private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en","ar"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 0, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 0];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// TODO: Füge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "GrpFhr"];
_unit setVariable ["Nilia_Waffenklasse", "Standard"]; // TODO: Klasse (GrpFhr) erstellen und in allen farben korrekt setzten, Lasermarkierer, Führungsstuff!
systemChat format ["Deine Klasse: %1, Deine Waffenklasse: %2", _unit getVariable "Nilia_Klasse", _unit getVariable "Nilia_Waffenklasse"];

// Farbspezifische Items hinzufügen:
switch (true) do {
default {
_unit forceAddUniform "EUFOR_Uniforms_Fleck";
_unit addVest "EUFOR_Vest_Carrier_3_Fleck";
_unit addBackpack "EUFOR_Backpacks_PredatorRadio_Fleck";
_unit addItemToBackpack "EUFOR_Helmets_MilCap_Fleck";
_unit addHeadgear "EUFOR_Helmets_HelmetB_Fleck";
_unit addWeapon "hlc_rifle_416D145_wdl_grip";
_farbe = "Flecktarn";
};
case ("Tropen" in _farbe): {
_unit forceAddUniform "EUFOR_Uniforms_TropenD";
_unit addVest "EUFOR_Vest_Carrier_3_Tropen_Digital";
_unit addBackpack "EUFOR_Backpacks_PredatorRadio_TropenD";
_unit addItemToBackpack "EUFOR_Helmets_MilCap_TropenD";
_unit addHeadgear "EUFOR_Helmets_HelmetB_TropenD";
_unit addWeapon "hlc_rifle_416D145_tan_grip";
_farbe = "Tropentarn";
};
case ("Schnee" in _farbe): {
_unit forceAddUniform "EUFOR_Uniforms_Schnee";
_unit addVest "EUFOR_Vest_Carrier_3_Schnee";
_unit addBackpack "EUFOR_Backpacks_PredatorRadio_Schnee";
_unit addItemToBackpack "EUFOR_Helmets_MilCap_Schnee";
_unit addHeadgear "EUFOR_Helmets_HelmetB_Schnee";
_unit addWeapon "hlc_rifle_416D145_grip";
_farbe = "Schneetarn";
};
case ("Multi" in _farbe): {
_unit forceAddUniform "EUFOR_Uniforms_Multi";
_unit addVest "EUFOR_Vest_Carrier_3_Multi";
_unit addBackpack "EUFOR_Backpacks_PredatorRadio_Multi";
_unit addItemToBackpack "EUFOR_Helmets_MilCap_Multi";
_unit addHeadgear "EUFOR_Helmets_HelmetB_Multi";
_unit addWeapon "hlc_rifle_416D145_tan_grip";
_farbe = "Multitarn";
};
};

//hint
systemChat format ["Ausrüstung (%1): Gruppenführer wird geladen!", _farbe];
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_DBAL_A3_Green";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "hlc_30rnd_556x45_SOST_L5";
_unit addPrimaryWeaponItem "hlc_grip_PMVFG_Black";
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
_unit addItemToUniform "PapersPlease_PassportMilitary";
_unit addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "greenmag_item_speedloader";
for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";};
_unit addItemToUniform "hlc_30rnd_556x45_SOST_L5";
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_WaterBottle";};
_unit addItemToVest "kat_Pulseoximeter";
_unit addItemToVest "kat_larynx";
_unit addItemToVest "ACE_salineIV_250";
_unit addItemToVest "ACE_salineIV";
_unit addItemToVest "ACE_EHP";
_unit addItemToVest "ACE_MRE_ChickenTikkaMasala";
_unit addItemToVest "ACE_MRE_SteakVegetables";
_unit addItemToVest "ACE_HuntIR_monitor";
_unit addItemToVest "KNB_Notebook";
_unit addItemToVest "ItemAndroid";
for "_i" from 1 to 2 do {_unit addItemToVest "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "kat_Painkiller";
_unit addItemToVest "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 6 do {_unit addItemToVest "hlc_30rnd_556x45_SOST_L5";};
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30rnd_556x45_t_L5";};
for "_i" from 1 to 2 do {_unit addItemToVest "tsp_flashbang_cts2";};
_unit addItemToBackpack "ace_flags_blue";
_unit addItemToBackpack "ACE_SpraypaintBlue";
_unit addItemToBackpack "ACE_SpraypaintYellow";
_unit addItemToBackpack "ACE_SpraypaintGreen";
_unit addItemToBackpack "ACE_SpraypaintRed";
_unit addItemToBackpack "ACE_SpraypaintBlack";
_unit addItemToBackpack "ACE_SpraypaintWhite";
_unit addItemToBackpack "ACRE_PRC117F";
_unit addItemToBackpack "hlc_30rnd_556x45_SOST_L5";
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellYellow";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellOrange";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellPurple";};
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;
_farbe = nil;