params ["_target", "_caller", "_actionId", "_farbe"];
private _unit = player;
if (!local _unit) exitWith {};
_unit setUnitLoadout (configFile >> "EmptyLoadout");

// Set ACRE Babble Language
["en","gr","ru","ar"] call acre_api_fnc_babelSetSpokenLanguages;
["en","gr","ru","ar"] call acre_api_fnc_babelSetSpeakingLanguage;

// Set Medic and Engineer Level
_unit setVariable ["ACE_isEOD", false];              //Sprengstoff
_unit setVariable ["ACE_isEngineer", 1, true];      //Pionier 0=0, 1=EOD, 2=Pionier "true" muss sein :O
_unit setVariable ["ACE_medical_medicClass", 1];    //Medic 0=0, 1=Sani, 2=Arzt

// Setzte Globale Klassen
// TODO: Füge eine wenn Funktion ein, die den Globalen Rang nur setzt, wenn er noch nicht gesetzt wurde.
[_unit] call Nilia_fnc_Arsenal_setGlobalRang;
_unit setVariable ["Nilia_Klasse", "Sniper"];
_unit setVariable ["Nilia_Waffenklasse", "Sniper"];
systemChat format ["Deine Klasse: %1, Deine Waffenklasse: %2", _unit getVariable "Nilia_Klasse", _unit getVariable "Nilia_Waffenklasse"];

// Farbspezifische Items hinzufügen:
switch (true) do {
    default {
        _unit forceAddUniform "U_B_FullGhillie_lsh";
        _unit addVest "EUFOR_Vest_Carrier_1_Fleck";
        _unit addHeadgear "EUFOR_Helmets_HelmetB_Fleck";
        _unit addBackpack "EUFOR_Backpacks_Kitbag_Fleck_Medic";
        _unit addWeapon "hlc_rifle_awmagnum";
        _farbe = "Flecktarn";
    };
    case ("Tropen" in _farbe): {
        _unit forceAddUniform "U_B_FullGhillie_ard";
        _unit addVest "EUFOR_Vest_Carrier_1_TropenD";
        _unit addHeadgear "EUFOR_Helmets_HelmetB_TropenD";
        _unit addBackpack "EUFOR_Backpacks_Kitbag_TropenD_Medic";
        _unit addWeapon "hlc_rifle_awmagnum_FDE";
        _farbe = "Tropentarn";
    };
    case ("Schnee" in _farbe): {
        _unit forceAddUniform "U_B_FullGhillie_lsh";
        _unit addVest "EUFOR_Vest_Carrier_1_Schnee";
        _unit addHeadgear "EUFOR_Helmets_HelmetB_Schnee";
        _unit addBackpack "EUFOR_Backpacks_Kitbag_Schnee_Medic";
        _unit addWeapon "hlc_rifle_awmagnum";
        _farbe = "Schneetarn";
    };
    case ("Multi" in _farbe): {
        _unit forceAddUniform "U_B_FullGhillie_sard";
        _unit addVest "EUFOR_Vest_Carrier_1_Multi";
        _unit addHeadgear "EUFOR_Helmets_HelmetB_Multi";
        _unit addBackpack "EUFOR_Backpacks_Kitbag_Multi_Medic";
        _unit addWeapon "hlc_rifle_awmagnum";
        _farbe = "Multitarn";
    };
};

//hint
systemChat format ["Ausrüstung (%1): Scharfschütze geladen, sprachen konfiguriert und Rechte (Sani) gesetzt!", _farbe];
[_unit] call Nilia_fnc_SetRank;

// "Add weapons";
_unit addPrimaryWeaponItem "HLC_Charm_Teethgang";
_unit addPrimaryWeaponItem "MSS_Mark5_25_BLK_GM_NO_NO_NO";
_unit addPrimaryWeaponItem "hlc_5rnd_300WM_mk248_AWM";
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
_unit addItemToVest "ACE_MRE_ChickenTikkaMasala";
_unit addItemToVest "ACE_MRE_CreamTomatoSoup";
_unit addItemToVest "ItemAndroid";
_unit addItemToVest "ACE_Kestrel4500";
_unit addItemToVest "ACE_HuntIR_monitor";
_unit addItemToVest "ACE_DAGR";
_unit addItemToVest "ACE_ATragMX";
for "_i" from 1 to 2 do {_unit addItemToVest "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
_unit addItemToVest "SmokeShellBlue";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "kat_Painkiller";
_unit addItemToVest "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiWhite";};
for "_i" from 1 to 10 do {_unit addItemToVest "hlc_5rnd_300WM_mk248_AWM";};
for "_i" from 1 to 4 do {_unit addItemToVest "hlc_5rnd_300WM_T_AWM";};
_unit addItemToBackpack "ACE_Tripod";
for "_i" from 1 to 3 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_bloodIV_O_N_250";};
_unit addItemToBackpack "kat_BVM";
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
_unit addItemToBackpack "kat_AFAK";
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "kat_larynx";};
_unit addItemToBackpack "ACE_WaterBottle";
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_TXA";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_ncdKit";};
_unit addItemToBackpack "ACRE_PRC117F";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_painkillers";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Painkiller";};
_unit addItemToBackpack "kat_Caffeine";
for "_i" from 1 to 2 do {_unit addItemToBackpack "kat_Carbonate";};
_unit addGoggles "rhs_googles_clear";

// "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemcTab";

//Destroy Variables
_unit = nil;
_farbe = nil;