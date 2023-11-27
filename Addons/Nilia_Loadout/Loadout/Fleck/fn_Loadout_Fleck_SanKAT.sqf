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

//hint
systemChat "Flecktarn Ausrüstung: Sani geladen und Rechte (Arzt) gesetzt!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_mp510_tac";
_unit addPrimaryWeaponItem "ACE_muzzle_mzls_smg_01";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_Holosight_blk_F";
_unit addPrimaryWeaponItem "hlc_30Rnd_10mm_JHP_MP5";
_unit addPrimaryWeaponItem "hlc_grip_PMVFG_Black";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "HLC_optic_ATT";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_EUFOR_Uniform_Fleck";
_unit addVest "pbw_splitter_sani";
_unit addBackpack "EUFOR_Backpack_Fleck_Tortilia_Arzt";

// "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 11 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "kat_larynx";};
_unit addItemToUniform "ItemcTabHCam";
_unit addItemToUniform "ACE_EntrenchingTool";
_unit addItemToUniform "kat_crossPanel";
for "_i" from 1 to 4 do {_unit addItemToUniform "kat_scalpel";};
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_Chemlight_HiWhite";};
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToVest "ACE_surgicalKit";
_unit addItemToVest "kat_vacuum";
_unit addItemToVest "kat_accuvac";
_unit addItemToVest "kat_stethoscope";
for "_i" from 1 to 8 do {_unit addItemToVest "kat_chestSeal";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_salineIV";};
_unit addItemToVest "ACE_salineIV_250";
for "_i" from 1 to 8 do {_unit addItemToVest "kat_scalpel";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM51A1";};
_unit addItemToVest "BWA3_DM32_Blue";
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_30Rnd_10mm_JHP_MP5";};
_unit addItemToBackpack "kat_X_AED";
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_atropine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "KAT_Empty_bloodIV_250";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "KAT_Empty_bloodIV_500";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_EACA";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_etomidate";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_flumazenil";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_clamp";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_plate";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "kat_larynx";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_lidocaine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_lorazepam";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_nalbuphine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_ncdKit";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_nitroglycerin";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_phenylephrine";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_retractor";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 13 do {_unit addItemToBackpack "kat_scalpel";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_TXA";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 19 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_bloodIV_O_N";};
for "_i" from 1 to 9 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_plasmaIV";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_bloodIV_O_N_500";};
_unit addItemToBackpack "ACE_salineIV_500";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bodyBag_blue";};
_unit addItemToBackpack "kat_BVM";
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_Carbonate";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_Painkiller";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Caffeine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_Penthrox";};
_unit addItemToBackpack "kat_oxygenTank_300";
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_30Rnd_10mm_JHP_MP5";};
_unit addHeadgear "PBW_Helm4_fleck_HBO";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemAndroid";

//Destroy Variables
_unit = nil;