//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script Assigns items to arsenal based on Rank for Class Sniper
//
//
//	Parameter(s):
//                  0: Rank of Player
//
//	Returns:
//		Array/Text
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Klasse_Sniper
//		[0] call Nilia_fnc_Arsenal_Klasse_Sniper

params [["_unit", objNull, [objNull]], ["_rang", 0, [0]]];


// None
private _NoneKeine = [] call Nilia_fnc_Klasse_Keine_None;
private _NoneSniper = [] call Nilia_fnc_Klasse_Sniper_None;
private _none = _NoneKeine + _NoneSniper;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterSniper = [] call Nilia_fnc_Klasse_Sniper_Gefreiter;
private _Gefreiter = _GefreiterKeine + _GefreiterSniper + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterSniper = [] call Nilia_fnc_Klasse_Sniper_Obergefreiter;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterSniper + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterSniper = [] call Nilia_fnc_Klasse_Sniper_Hauptgefreiter;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterSniper + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterSniper = [] call Nilia_fnc_Klasse_Sniper_Stabsgefreiter;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterSniper + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterSniper = [] call Nilia_fnc_Klasse_Sniper_Oberstabsgefreiter;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterSniper + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalSniper = [] call Nilia_fnc_Klasse_Sniper_Korporal;
private _Korporal = _KorporalKeine + _KorporalSniper + _Oberstabsgefreiter;
// Stabskorporal
private _StabskorporalKeine = [] call Nilia_fnc_Klasse_Keine_Stabskorporal;
private _StabskorporalSniper = [] call Nilia_fnc_Klasse_Sniper_Stabskorporal;
private _Stabskorporal = _StabskorporalKeine + _StabskorporalSniper + _Korporal;

private _items = [];

switch (true) do {
    case (_rang == 0): { _items = _none; };
    case (_rang == 1): { _items = _Gefreiter; };
    case (_rang == 2): { _items = _Obergefreiter; };
    case (_rang == 3): { _items = _Hauptgefreiter; };
    case (_rang == 4): { _items = _Stabsgefreiter; };
    case (_rang == 5): { _items = _Oberstabsgefreiter; };
    case (_rang == 6): { _items = _Korporal; };
    case (_rang >= 7): { _items = _Stabskorporal; };
    default { _items = _none; };
};

//Debug
//systemChat format ["DEBUG: Unit = %1, Rang = %2", _unit, _rang];
//systemChat format ["Items (%1): %2", _rang, _items];


_unit setVariable ["Nilia_RangKlassenItems", _items];