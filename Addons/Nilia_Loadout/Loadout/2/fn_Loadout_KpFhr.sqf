params ["_target", "_caller", "_actionId", "_farbe"];
private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en","gr","ru","ar"] call acre_api_fnc_babelSetSpokenLanguages;
["en","gr","ru","ar"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", true];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 2, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 2];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// TODO: Füge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "KpFhr"];
_unit setVariable ["Nilia_Waffenklasse", "ULG"];
systemChat format ["Deine Klasse: %1, Deine Waffenklasse: %2", _unit getVariable "Nilia_Klasse", _unit getVariable "Nilia_Waffenklasse"];

// Farbspezifische Items hinzufügen:
switch (true) do {
    default {
        _unit forceAddUniform "EUFOR_Uniforms_Tarn_Fleck";
        _unit addVest "EUFOR_Vest_KBT_Heavy_Fleck";
        _unit addHeadgear "EUFOR_Helmets_HelmetB_TI_Fleck";
        _unit addBackpack "EUFOR_Backpacks_Radiobag_Fleck_PL";
        _unit addGoggles "EUFOR_Helmets_Balaclava_G_Fleck";
        _farbe = "Flecktarn";
    };
    case ("Tropen" in _farbe): {
        _unit forceAddUniform "EUFOR_Uniforms_Tarn_TropenD";
        _unit addVest "EUFOR_Vest_KBT_Heavy_Tropen_Digital";
        _unit addHeadgear "EUFOR_Helmets_HelmetB_TI_TropenD";
        _unit addBackpack "EUFOR_Backpacks_Radiobag_TropenD_PL";
        _unit addGoggles "EUFOR_Helmets_Balaclava_G_TropenD";
        _farbe = "Tropentarn";
    };
    case ("Schnee" in _farbe): {
        _unit forceAddUniform "EUFOR_Uniforms_Tarn_Schnee";
        _unit addVest "EUFOR_Vest_KBT_Heavy_Schnee";
        _unit addHeadgear "EUFOR_Helmets_HelmetB_TI_Schnee";
        _unit addBackpack "EUFOR_Backpacks_Radiobag_Schnee_PL";
        _unit addGoggles "EUFOR_Helmets_Balaclava_G_Schnee";
        _farbe = "Schneetarn";
    };
    case ("Multi" in _farbe): {
        _unit forceAddUniform "EUFOR_Uniforms_Tarn_Multi";
        _unit addVest "EUFOR_Vest_KBT_Heavy_Multi";
        _unit addHeadgear "EUFOR_Helmets_HelmetB_TI_Multi";
        _unit addBackpack "EUFOR_Backpacks_Radiobag_Multi_PL";
        _unit addGoggles "EUFOR_Helmets_Balaclava_G_Multi";
        _farbe = "Multitarn";
    };
};

//hint
systemChat format ["Ausrüstung (%1): KpFhr wird geladen, sprachen konfiguriert und alle Rechte wurden gesetzt!", _farbe];
[_unit] call Nilia_fnc_SetRank;

// "Add weapons";
_unit addWeapon "hlc_rifle_SG551LB_TAC_GL";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "optic_ERCO_blk_F";
_unit addPrimaryWeaponItem "hlc_30Rnd_556x45_SPR_sg550";
_unit addPrimaryWeaponItem "rhs_mag_M433_HEDP";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "HLC_optic_ATT";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "LaserdesignatorGPS_01";

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
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "EUFOR_MedPanel";
_unit addItemToUniform "ACRE_PRC152";
_unit addItemToUniform "hlc_12Rnd_357SIG_B_P226";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
_unit addItemToUniform "kat_Caffeine";
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_WaterBottle";};
_unit addItemToVest "kat_Pulseoximeter";
_unit addItemToVest "kat_larynx";
_unit addItemToVest "ACE_salineIV_250";
_unit addItemToVest "ACE_MRE_CreamTomatoSoup";
_unit addItemToVest "ACE_MRE_ChickenTikkaMasala";
_unit addItemToVest "ACE_HuntIR_monitor";
_unit addItemToVest "kat_coag_sense";
_unit addItemToVest "kat_ultrasound";
for "_i" from 1 to 2 do {_unit addItemToVest "kat_clamp";};
_unit addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 2 do {_unit addItemToVest "kat_retractor";};
for "_i" from 1 to 2 do {_unit addItemToVest "kat_reboa";};
_unit addItemToVest "kat_vacuum";
_unit addItemToVest "kat_stethoscope";
_unit addItemToVest "kat_fluidWarmer";
_unit addItemToVest "EUFOR_Helmets_Beret_EuDef";
_unit addItemToVest "JAS_GPNVG18_blk_TI";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "kat_Painkiller";
_unit addItemToVest "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
_unit addItemToVest "kat_Pervitin";
_unit addItemToVest "hlc_30Rnd_556x45_T_sg550";
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_30Rnd_556x45_SPR_sg550";};
_unit addItemToBackpack "ace_marker_flags_blue";
for "_i" from 1 to 9 do {_unit addItemToBackpack "kat_phenylephrineAuto";};
_unit addItemToBackpack "rhs_googles_orange";
_unit addItemToBackpack "rhs_googles_black";
_unit addItemToBackpack "rhs_googles_yellow";
_unit addItemToBackpack "kat_BVM";
_unit addItemToBackpack "ACE_salineIV";
_unit addItemToBackpack "kat_accuvac";
_unit addItemToBackpack "kat_X_AED";
_unit addItemToBackpack "kat_MFAK";
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_TXA";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_amiodarone";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_atropine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 11 do {_unit addItemToBackpack "ACE_quikclot";};
_unit addItemToBackpack "KAT_Empty_bloodIV_250";
_unit addItemToBackpack "KAT_Empty_bloodIV_500";
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_EACA";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_etomidate";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_flumazenil";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_handWarmer";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_epinephrineIV";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_plate";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "kat_larynx";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_lidocaine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_lorazepam";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 11 do {_unit addItemToBackpack "kat_nalbuphine";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_nasal";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_ncdKit";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_nitroglycerin";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_phenylephrine";};
for "_i" from 1 to 9 do {_unit addItemToBackpack "ACE_plasmaIV_250";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_scalpel";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "kat_bloodIV_O_N_250";};
_unit addItemToBackpack "muzzle_antenna_01_f";
_unit addItemToBackpack "muzzle_antenna_02_f";
_unit addItemToBackpack "muzzle_antenna_03_f";
for "_i" from 1 to 2 do {_unit addItemToBackpack "greenmag_ammo_556x45_basic_60Rnd";};
_unit addItemToBackpack "ACE_SpraypaintBlack";
_unit addItemToBackpack "ACRE_PRC117F";
_unit addItemToBackpack "hgun_esd_01_F";
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "40xtra_1Rnd_40mm_msblue";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_HuntIR_M203";};
for "_i" from 1 to 13 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_40mm_Flare_white";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeYellow_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeOrange_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
_unit addItemToBackpack "kat_oxygenTank_300";
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_painkillers";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_Painkiller";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_Penthrox";};
_unit addItemToBackpack "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Carbonate";};


// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "KAT_STS";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;
_farbe = nil;