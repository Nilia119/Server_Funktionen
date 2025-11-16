private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en"] call acre_api_fnc_babelSetSpokenLanguages;
["en"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 0, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 2];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// Fünge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "Kompakt1"];
systemChat format ["Deine Klasse: %1", _unit getVariable "Nilia_Klasse"];

//hint
systemChat "Ausrüstung (Tropen): Sani geladen und Rechte (Arzt) gesetzt!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "SMG_03C_TR_khaki";
_unit addPrimaryWeaponItem "ACE_DBAL_A3_Green";
_unit addPrimaryWeaponItem "CUP_optic_AC11704_Black";
_unit addPrimaryWeaponItem "50Rnd_570x28_SMG_03_tracer_blue";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_EUFOR_Uniform_Tropen_Digital";
_unit addVest "BWA3_Vest_Medic_Tropen";
_unit addBackpack "EUFOR_Backpack_Tropen_Tortilia_Arzt";

// "Add items to containers";
_unit addItemToUniform "kat_IFAK";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "ItemcTabHCam";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {_unit addItemToUniform "kat_larynx";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_EntrenchingTool";
_unit addItemToUniform "PapersPlease_PassportMilitary";
_unit addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "greenmag_item_speedloader";
_unit addItemToUniform "kat_crossPanel";
_unit addItemToUniform "EUFOR_MedPanel";
_unit addItemToUniform "kat_Pulseoximeter";
for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_WaterBottle";};
_unit addItemToVest "ACE_salineIV_250";
_unit addItemToVest "ACE_salineIV";
_unit addItemToVest "ACE_MRE_CreamTomatoSoup";
_unit addItemToVest "ACE_MRE_ChickenTikkaMasala";
_unit addItemToVest "kat_BVM";
_unit addItemToVest "kat_coag_sense";
_unit addItemToVest "kat_fluidWarmer";
_unit addItemToVest "kat_ultrasound";
for "_i" from 1 to 2 do {_unit addItemToVest "kat_clamp";};
for "_i" from 1 to 2 do {_unit addItemToVest "kat_retractor";};
for "_i" from 1 to 2 do {_unit addItemToVest "kat_reboa";};
_unit addItemToVest "kat_stethoscope";
_unit addItemToVest "kat_vacuum";
_unit addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 2 do {_unit addItemToVest "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "kat_Painkiller";
_unit addItemToVest "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 4 do {_unit addItemToVest "50Rnd_570x28_SMG_03_tracer_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellPurple";};
_unit addItemToBackpack "kat_X_AED";
_unit addItemToBackpack "kat_accuvac";
_unit addItemToBackpack "KNB_PanelRed";
_unit addItemToBackpack "KNB_PanelGreen";
_unit addItemToBackpack "KNB_PanelYellow";
_unit addItemToBackpack "kat_MFAK";
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_handWarmer";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_plate";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "kat_larynx";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_nasal";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_scalpel";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_TXA";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_EACA";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 40 do {_unit addItemToBackpack "kat_etomidate";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_flumazenil";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_lorazepam";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_ncdKit";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_nalbuphine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_epinephrineIV";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_nitroglycerin";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_phenylephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_phenylephrineAuto";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_lidocaine";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "kat_atropine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "KAT_Empty_bloodIV_500";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "KAT_Empty_bloodIV_250";};
for "_i" from 1 to 45 do {_unit addItemToBackpack "ACE_salineIV_250";};
_unit addItemToBackpack "ACE_plasmaIV";
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bodyBag_blue";};
for "_i" from 1 to 40 do {_unit addItemToBackpack "kat_bloodIV_O_N_250";};
_unit addItemToBackpack "ACE_salineIV";
_unit addItemToBackpack "kat_bloodIV_O_N";
for "_i" from 1 to 16 do {_unit addItemToBackpack "ACE_plasmaIV_250";};
_unit addItemToBackpack "kat_oxygenTank_300";
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_Penthrox";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_Caffeine";};
_unit addItemToBackpack "kat_Pervitin";
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_Painkiller";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_Carbonate";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_painkillers";};
_unit addHeadgear "PBW_Helm4_tropen_HBO";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "KAT_STS";
_unit linkItem "ItemAndroid";

//Destroy Variables
_unit = nil;
