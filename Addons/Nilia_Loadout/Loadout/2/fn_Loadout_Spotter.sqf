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
_unit setVariable ["ACE_medical_medicClass", 2];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// TODO: Füge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "Spotter"];
_unit setVariable ["Nilia_Waffenklasse", "DMR"];
systemChat format ["Deine Klasse: %1, Deine Waffenklasse: %2", _unit getVariable "Nilia_Klasse", _unit getVariable "Nilia_Waffenklasse"];

// Farbspezifische Items hinzufügen:
switch (true) do {
default {
_unit forceAddUniform "U_B_FullGhillie_lsh";
_unit addVest "EUFOR_Vest_Carrier_2_Fleck";
_unit addBackpack "EUFOR_Backpacks_Tortilia_Medic_1";
_unit addHeadgear "EUFOR_Helmets_Boonie_Spec_Fleck";
_unit addWeapon "hlc_wp_SSR_Blk";
_unit addPrimaryWeaponItem "hlc_20Rnd_762x51_T_SCARH";
_unit addPrimaryWeaponItem "bipod_01_F_blk";
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_20Rnd_762x51_TDim_SCARH";};
for "_i" from 1 to 4 do {_unit addItemToVest "hlc_20Rnd_762x51_T_SCARH";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_SCARH";};
_farbe = "Flecktarn";
};
case ("Tropen" in _farbe): {
_unit forceAddUniform "U_B_FullGhillie_ard";
_unit addVest "EUFOR_Vest_Carrier_2_Tropen_Digital";
_unit addBackpack "EUFOR_Backpacks_Tortilia_Medic_2";
_unit addHeadgear "EUFOR_Helmets_Boonie_Spec_TropenD";
_unit addWeapon "hlc_WP_SSR";
_unit addPrimaryWeaponItem "hlc_20Rnd_762x51_T_SCARH_tan";
_unit addPrimaryWeaponItem "bipod_01_F_snd";
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_20Rnd_762x51_TDim_SCARH_tan";};
for "_i" from 1 to 4 do {_unit addItemToVest "hlc_20Rnd_762x51_T_SCARH_tan";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_SCARH_tan";};
_farbe = "Tropentarn";
};
case ("Schnee" in _farbe): {
_unit forceAddUniform "U_B_FullGhillie_lsh";
_unit addVest "EUFOR_Vest_Carrier_2_Schnee";
_unit addBackpack "EUFOR_Backpacks_Tortilia_Medic";
_unit addHeadgear "EUFOR_Helmets_Boonie_Spec_Schnee";
_unit addWeapon "hlc_wp_SSR_Blk";
_unit addPrimaryWeaponItem "hlc_20Rnd_762x51_T_SCARH";
_unit addPrimaryWeaponItem "bipod_01_F_blk";
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_20Rnd_762x51_TDim_SCARH";};
for "_i" from 1 to 4 do {_unit addItemToVest "hlc_20Rnd_762x51_T_SCARH";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_SCARH";};
_farbe = "Schneetarn";
};
case ("Multi" in _farbe): {
_unit forceAddUniform "U_B_FullGhillie_sard";
_unit addVest "EUFOR_Vest_Carrier_2_Multi";
_unit addBackpack "EUFOR_Backpacks_Tortilia_Medic_2";
_unit addHeadgear "EUFOR_Helmets_Boonie_Spec_Multi";
_unit addWeapon "hlc_wp_SSR_camo";
_unit addPrimaryWeaponItem "hlc_20Rnd_762x51_T_SCARH_camo";
_unit addPrimaryWeaponItem "bipod_01_F_blk";
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_20Rnd_762x51_TDim_SCARH_camo";};
for "_i" from 1 to 4 do {_unit addItemToVest "hlc_20Rnd_762x51_T_SCARH_camo";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "hlc_20Rnd_762x51_T_SCARH_camo";};
_farbe = "Multitarn";
};};

//hint
systemChat format ["Ausrüstung (%1): Beobachter wird geladen, sprachen wurden konfiguriert und Rechte (Arzt) wurden vergeben!", _farbe];
[_unit] call Nilia_fnc_SetRank;

// "Add weapons";
_unit addPrimaryWeaponItem "hlc_muzzle_FSC30";
_unit addPrimaryWeaponItem "ACE_DBAL_A3_Green";
_unit addPrimaryWeaponItem "hlc_optic_ATACR_Offset";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";


// "Add binoculars";
_unit addWeapon "ACE_Vector";

// "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "kat_IFAK";
_unit addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "kat_larynx";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "PapersPlease_PassportMilitary";
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "greenmag_item_speedloader";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_RangeCard";
for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_WaterBottle";};
_unit addItemToVest "kat_Pulseoximeter";
_unit addItemToVest "kat_larynx";
_unit addItemToVest "ACE_salineIV_250";
_unit addItemToVest "ACE_salineIV";
_unit addItemToVest "ACE_EHP";
_unit addItemToVest "ACE_ATragMX";
_unit addItemToVest "kat_coag_sense";
_unit addItemToVest "ItemAndroid";
_unit addItemToVest "ACE_MRE_ChickenHerbDumplings";
_unit addItemToVest "ACE_MRE_CreamChickenSoup";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Kestrel4500";};
_unit addItemToVest "kat_fluidWarmer";
_unit addItemToVest "kat_ultrasound";
_unit addItemToVest "kat_stethoscope";
for "_i" from 1 to 2 do {_unit addItemToVest "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "kat_Painkiller";
_unit addItemToVest "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
_unit addItemToBackpack "kat_X_AED";
_unit addItemToBackpack "kat_accuvac";
_unit addItemToBackpack "kat_MFAK";
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_handWarmer";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_plate";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_larynx";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_nasal";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_scalpel";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 7 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_TXA";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_EACA";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "kat_etomidate";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_flumazenil";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_ncdKit";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_nalbuphine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_epinephrineIV";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_nitroglycerin";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_phenylephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_phenylephrineAuto";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_lidocaine";};
for "_i" from 1 to 7 do {_unit addItemToBackpack "kat_atropine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "KAT_Empty_bloodIV_500";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "KAT_Empty_bloodIV_250";};
_unit addItemToBackpack "ACE_plasmaIV";
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bodyBag_blue";};
_unit addItemToBackpack "ACE_salineIV";
_unit addItemToBackpack "kat_bloodIV_O_N";
for "_i" from 1 to 11 do {_unit addItemToBackpack "ACE_plasmaIV_250";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_bloodIV_O_N_250";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_lorazepam";};
_unit addItemToBackpack "ACE_HuntIR_monitor";
_unit addItemToBackpack "kat_BVM";
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_clamp";};
_unit addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_retractor";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_reboa";};
_unit addItemToBackpack "kat_vacuum";
_unit addItemToBackpack "kat_oxygenTank_300";
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_Penthrox";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_Caffeine";};
_unit addItemToBackpack "kat_Pervitin";
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_Painkiller";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_Carbonate";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_painkillers";};
_unit addItemToBackpack "rhs_mag_m67";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;
_farbe = nil;