//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script Assigns items to arsenal based on Rank for Class MG
//
//
//	Parameter(s):
//                  0: Rank of Player
//
//	Returns:
//		Array/Text
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Klasse_MG
//		[0] call Nilia_fnc_Arsenal_Klasse_MG

params [["_unit", objNull, [objNull]], ["_rang", 0, [0]]];


// None
private _NoneKeine = [] call Nilia_fnc_Klasse_Keine_None;
private _NoneMG = [] call Nilia_fnc_Klasse_MG_None;
private _none = _NoneKeine + _NoneMG;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterMG = [] call Nilia_fnc_Klasse_MG_Gefreiter;
private _Gefreiter = _GefreiterKeine + _GefreiterMG + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterMG = [] call Nilia_fnc_Klasse_MG_Obergefreiter;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterMG + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterMG = [] call Nilia_fnc_Klasse_MG_Hauptgefreiter;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterMG + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterMG = [] call Nilia_fnc_Klasse_MG_Stabsgefreiter;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterMG + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterMG = [] call Nilia_fnc_Klasse_MG_Oberstabsgefreiter;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterMG + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalMG = [] call Nilia_fnc_Klasse_MG_Korporal;
private _Korporal = _KorporalKeine + _KorporalMG + _Oberstabsgefreiter;
// Stabskorporal
private _StabskorporalKeine = [] call Nilia_fnc_Klasse_Keine_Stabskorporal;
private _StabskorporalMG = [] call Nilia_fnc_Klasse_MG_Stabskorporal;
private _Stabskorporal = _StabskorporalKeine + _StabskorporalMG + _Korporal;

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