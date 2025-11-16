//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script enthält Spielerspezifische Items
//
//
//	Parameter(s):
//                  0: Name des zu Prüfenden Spielers
//
//	Returns:
//		Array/Text
//
//	Example:
//		[] call Nilia_fnc_Arsenal_PlayerItems
//		[player] call Nilia_fnc_Arsenal_Playeritems

params [["_unit", objNull, [objNull]]];
private _uid = getPlayerUID _unit;
private _items = [];

switch (_uid) do {
    case "_SP_PLAYER_": {systemChat "Hey, Singelplayer Nilia, du hast eigene Items!"; _items = ["hlc_wp_M16A1", "itemCompass"];};
    case "76561198088210593": {systemChat "Hey, Nilia, du hast eigene Items!"; _items = ["hlc_wp_M16A1", "CUP_arifle_AK108_railed", "CUP_arifle_AK108_GL_railed"];};
    case "76561198320063927": {systemChat "Hey, Juggernaut, du hast eigene Items!"; _items = ["itemCompass"];};
    case "76561199107750287": {systemChat "Hey, Benedikt, du hast eigene Items!"; _items = ["CUP_arifle_HK417_12", "rhs_weap_MP44", "hlc_rifle_G36TAC", "rhs_tr8_periscope", "40xtra_nade_throw_stone", "TBW_Helm3_Tropen", "TBW_Helm3_Fleck", "rhsgref_30Rnd_792x33_SmE_StG"];};
    case "76561198242677538": {systemChat "Hey, Pluto, du hast eigene Items!"; _items = ["rhs_weap_m72a7", "itemCompass"];};
    case "76561198246422814": {systemChat "Hey, Sam, du hast eigene Items!"; _items = ["CUP_hgun_TaurusTracker455_gold", "CUP_6Rnd_45ACP_M", "itemCompass"];};
    case "76561198273615054": {systemChat "Hey, Kevin, du hast eigene Items!"; _items = ["Arifle_min_rf_ash_12", "20Rnd_min_rf_127x55_Mag", "MMG_02_black_F", "MMG_02_sand_F", "LMG_Mk200_F", "LMG_Mk200_black_F", "hlc_optic_ATACR", "CUP_optic_ACOG_TA648_308_RDS_black", "optic_DMS_weathered_Kir_F"];};
    case "76561198840999766": {systemChat "Hey, Scholle, du hast eigene Items!"; _items = ["rhs_weap_m1garand_sa43", "HLC_Rifle_g3ka4_GL", "optic_Nightstalker"];};

    default {systemChat "Keine Eigenen Items"; _items = ["itemCompass"];};
};

_unit setVariable ["Nilia_SpielerItems", _items];