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
    case "76561198088210593": {systemChat "Hey, Nilia, du hast eigene Items!"; _items = ["hlc_wp_M16A1", "itemCompass"];};
    case "76561198320063927": {systemChat "Hey, Juggernaut, du hast eigene Items!"; _items = ["itemCompass"];};
    case "76561199107750287": {systemChat "Hey, Benedikt, du hast eigene Items (zum Testen xD)!"; _items = ["HLC_wp_M134Painless","itemCompass"];};

    default {systemChat "Keine Eigenen Items"; _items = ["itemWatch"];};
};

_unit setVariable ["Nilia_SpielerItems", _items];