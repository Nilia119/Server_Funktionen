private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en","ar"] call acre_api_fnc_babelSetSpokenLanguages;
["en","ar"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 0, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 2];    //Medic 0=0, 1=Sani, 2=Arzt

//hint
systemChat "Flecktarn Ausrüstung: Zugführer geladen, sprachen konfiguriert und Rechte (Sani) gesetzt!";
[_unit] call Nilia_fnc_SetRank;

//"Exported from Arsenal by [OberstLt.] Nilia";

// "Add weapons";
_unit addWeapon "hlc_rifle_SG551LB_TAC_GL";
_unit addPrimaryWeaponItem "hlc_muzzle_SF3P_556";
_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
_unit addPrimaryWeaponItem "optic_ERCO_blk_F";
_unit addPrimaryWeaponItem "hlc_30Rnd_556x45_SPR_sg550";
_unit addPrimaryWeaponItem "rhs_mag_M433_HEDP";
_unit addWeapon "hlc_pistol_P226R_357Combat";
_unit addHandgunItem "HLC_optic_ATT";
_unit addHandgunItem "hlc_12Rnd_357SIG_B_P226";

// "Add containers";
_unit forceAddUniform "W_BW2035_Uniform_Fleck";
_unit addVest "BWA3_Vest_Leader_Fleck";
_unit addBackpack "ACREFR_rt1523g_big_bwmod";

// "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "Laserdesignator_01_khk_F";

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
_unit addItemToUniform "ItemcTabHCam";
for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_Chemlight_HiWhite";};
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToUniform "BWA3_DM32_Blue";
for "_i" from 1 to 2 do {_unit addItemToUniform "BWA3_DM25";};
_unit addItemToVest "ACE_HuntIR_monitor";
_unit addItemToVest "ItemAndroid";
_unit addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_12Rnd_357SIG_B_P226";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 5 do {_unit addItemToVest "hlc_30Rnd_556x45_SPR_sg550";};
_unit addItemToVest "hlc_30Rnd_556x45_T_sg550";
_unit addItemToBackpack "NVGogglesB_gry_F";
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_salineIV_250";};
_unit addItemToBackpack "H_Barett_EuDeF";
_unit addItemToBackpack "BWA3_G_Combat_clear";
_unit addItemToBackpack "BWA3_G_Combat_black";
_unit addItemToBackpack "BWA3_G_Combat_orange";
_unit addItemToBackpack "kat_X_AED";
_unit addItemToBackpack "ACE_salineIV";
_unit addItemToBackpack "kat_Pulseoximeter";
_unit addItemToBackpack "ACRE_PRC117F";
for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM25";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeYellow_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeOrange_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
_unit addHeadgear "PBW_Helm5_fleck_H";
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;