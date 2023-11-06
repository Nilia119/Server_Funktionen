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

//hint
systemChat "Tropentarn Ausrüstung: KpFhr geladen, sprachen konfiguriert und alle Rechte gesetzt!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_rifle_SG551LB_TAC_GL";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "acc_pointer_blue";
_unit addPrimaryWeaponItem "optic_ERCO_blk_F";
_unit addPrimaryWeaponItem "hlc_30Rnd_556x45_SPR_sg550";
_unit addPrimaryWeaponItem "rhs_mag_M433_HEDP";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "HLC_optic_ATT";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_BW2035_Uniform_Tropen";
_unit addVest "BWA3_Vest_Leader_Tropen";
_unit addBackpack "ACREFR_rt1523g_big_bwmod_tropen";

// "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "Laserdesignator";

// "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_EarPlugs";};
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "kat_larynx";};
_unit addItemToUniform "kat_Pulseoximeter";
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "ACRE_PRC152";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_Chemlight_HiWhite";};
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToVest "ACE_salineIV";
_unit addItemToVest "ACE_salineIV_250";
_unit addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "BWA3_DM32_Blue";
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_30Rnd_556x45_SPR_sg550";};
_unit addItemToVest "hlc_30Rnd_556x45_T_sg550";
_unit addItemToBackpack "ACE_HuntIR_monitor";
_unit addItemToBackpack "NVGogglesB_gry_F";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_250";};
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "kat_X_AED";
_unit addItemToBackpack "BWA3_Beret_Jaeger";
_unit addItemToBackpack "MRH_FoldedSatcomAntenna";
_unit addItemToBackpack "MRH_TacticalDisplay";
for "_i" from 1 to 4 do {_unit addItemToBackpack "mgm_item_redgull";};
_unit addItemToBackpack "rhs_googles_orange";
_unit addItemToBackpack "rhs_googles_black";
_unit addItemToBackpack "rhs_googles_clear";
_unit addItemToBackpack "ACRE_SEM70";
for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM25";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeOrange_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeYellow_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
_unit addHeadgear "PBW_Helm4_tropen_HBOD";
_unit addGoggles "rhs_googles_yellow";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;