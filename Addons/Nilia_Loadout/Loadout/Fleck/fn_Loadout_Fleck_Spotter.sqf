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

//hint
systemChat "Flecktarn Ausrüstung: Beobachter geladen, sprachen konfiguriert und Rechte (Arzt) gesetzt!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_rifle_g3sg1ris";
_unit addPrimaryWeaponItem "hlc_muzzle_FSC30";
_unit addPrimaryWeaponItem "hlc_optic_ATACR_Offset";
_unit addPrimaryWeaponItem "hlc_20rnd_762x51_T_G3";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "U_B_FullGhillie_lsh";
_unit addVest "pbw_splitter_zivil";
_unit addBackpack "EUFOR_Backpack_Fleck_Tortilia_Arzt";

// "Add binoculars";
_unit addWeapon "ACE_Vector";

// "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
_unit addItemToUniform "ACE_RangeCard";
_unit addItemToUniform "ItemcTabHCam";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_Kestrel4500";
for "_i" from 1 to 2 do {_unit addItemToUniform "kat_larynx";};
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_ATragMX";
_unit addItemToUniform "Nilia_MedPanel";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 5 do {_unit addItemToVest "ACE_elasticBandage";};
_unit addItemToVest "ItemAndroid";
_unit addItemToVest "ACE_Kestrel4500";
_unit addItemToVest "kat_chestSeal";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "rhs_mag_m67";
_unit addItemToVest "BWA3_DM32_Blue";
_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_20rnd_762x51_T_G3";};
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_20rnd_762x51_IRDim_G3";};
_unit addItemToBackpack "kat_X_AED";
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_atropine";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "KAT_Empty_bloodIV_250";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "KAT_Empty_bloodIV_500";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "kat_EACA";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_etomidate";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 14 do {_unit addItemToBackpack "kat_flumazenil";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_clamp";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_plate";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_larynx";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_lidocaine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_lorazepam";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_nalbuphine";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_ncdKit";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_nitroglycerin";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_phenylephrine";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 9 do {_unit addItemToBackpack "kat_retractor";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_scalpel";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_TXA";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 19 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "kat_bloodIV_O_N";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_plasmaIV";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_bloodIV_O_N_500";};
_unit addItemToBackpack "ACE_salineIV_500";
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "ACE_DAGR";
_unit addItemToBackpack "ACE_HuntIR_monitor";
_unit addItemToBackpack "kat_accuvac";
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_chestSeal";};
_unit addItemToBackpack "kat_stethoscope";
_unit addItemToBackpack "kat_vacuum";
_unit addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACRE_PRC152";};
_unit addItemToBackpack "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Carbonate";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Painkiller";};
_unit addItemToBackpack "rhs_mag_m67";
_unit addHeadgear "PBW_Helm4_fleck_H";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;