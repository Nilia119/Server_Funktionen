//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script
//
//
//	Parameter(s):
//                  0: Name des zu Prüfenden Spielers
//
//	Returns:
//		Array/Text
//
//	Example:
//		[] call Nilia_fnc_Arsenal_RangundKlasse
//		[player] call Nilia_fnc_Arsenal_PlayerItems

params [["_unit", objNull, [objNull]]];
private _klasse = _unit getVariable ["Nilia_Klasse", "Standard"];
private _rang = _unit getVariable ["Nilia_Rang", 0];
//_unit setVariable ["Nilia_RangKlassenItemsTemp", ["itemMap"]];

//Debug
//systemChat format ["DEBUG2: Klasse = %1, Rang = %2", _klasse, _rang];

if ((_klasse isEqualTo "")) then {
    _klasse = "Standard"; _rang = 0; systemChat "Bitte Standardausrüstung an Fahne laden, da Arsenal sonst generisch!";
};

systemChat format ["DEBUG3: Unit: %1, Rang: %2, Klasse: %3", _unit, _rang, _klasse];

//private _items =
switch (_klasse) do {
    case "Kompakt2": { [_unit, _rang] call Nilia_fnc_Arsenal_Klasse_Kompakt2 };
    case "Kompakt1": { [_unit, _rang] call Nilia_fnc_Arsenal_Klasse_Kompakt1 };
    case "MG":       { [_unit, _rang] call Nilia_fnc_Arsenal_Klasse_MG };
    case "LAT":      { [_unit, _rang] call Nilia_fnc_Arsenal_Klasse_LAT };
    case "Sniper":   { [_unit, _rang] call Nilia_fnc_Arsenal_Klasse_Sniper };
    case "DMR":      { [_unit, _rang] call Nilia_fnc_Arsenal_Klasse_DMR };
    case "ULG":{ [_unit, _rang] call Nilia_fnc_Arsenal_Klasse_ULG };
    case "PA":       { [_unit, _rang] call Nilia_fnc_Arsenal_Klasse_PA };

default { [_unit, _rang] call Nilia_fnc_Arsenal_Klasse_Standard };
};

//systemChat format ["Nach Funktionscall: Items: %1", Nilia_RangKlassenItems];

//_unit setVariable ["Nilia_RangKlassenItems", _items];
//hint format ["Unit Items: %1", _unit getVariable "Nilia_RangKlassenItems"];


/*
_unit setVariable ["Nilia_RangKlassenItems", _unit getVariable ["Nilia_RangKlassenItemsTemp", []]];
_unit setVariable ["Nilia_RangKlassenItemsTemp", ["itemMap"]];
 */