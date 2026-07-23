//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script Assigns items to arsenal based on Rank for Class PA
//
//
//	Parameter(s):
//                  0: Rank of Player
//
//	Returns:
//		Array/Text
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Klasse_PA
//		[0] call Nilia_fnc_Arsenal_Klasse_PA

params [["_unit", objNull, [objNull]], ["_rang", 0, [0]]];


// None
private _NoneKeine = [] call Nilia_fnc_Klasse_Keine_None;
private _NonePA = [] call Nilia_fnc_Klasse_PA_None;
private _NoneKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_None;
private _NoneTortilia = [] call Nilia_fnc_Klasse_Attire_Tortilia;
private _NonePredator = [] call Nilia_fnc_Klasse_Attire_Predator;
private _none = _NoneKeine + _NonePA + _NoneKompakt1 + _NoneTortilia + _NonePredator;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterPA = [] call Nilia_fnc_Klasse_PA_Gefreiter;
private _GefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Gefreiter;
private _Gefreiter = _GefreiterKeine + _GefreiterPA + _GefreiterKompakt1 + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterPA = [] call Nilia_fnc_Klasse_PA_Obergefreiter;
private _ObergefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Obergefreiter;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterPA + _ObergefreiterKompakt1 + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterPA = [] call Nilia_fnc_Klasse_PA_Hauptgefreiter;
private _HauptgefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Hauptgefreiter;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterPA + _HauptgefreiterKompakt1 + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterPA = [] call Nilia_fnc_Klasse_PA_Stabsgefreiter;
private _StabsgefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Stabsgefreiter;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterPA + _StabsgefreiterKompakt1 + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterPA = [] call Nilia_fnc_Klasse_PA_Oberstabsgefreiter;
private _OberstabsgefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Oberstabsgefreiter;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterPA + _OberstabsgefreiterKompakt1 + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalPA = [] call Nilia_fnc_Klasse_PA_Korporal;
private _KorporalKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Korporal;
private _Korporal = _KorporalKeine + _KorporalPA + _KorporalKompakt1 + _Oberstabsgefreiter;
// Stabskorporal
private _StabskorporalKeine = [] call Nilia_fnc_Klasse_Keine_Stabskorporal;
private _StabskorporalPA = [] call Nilia_fnc_Klasse_PA_Stabskorporal;
private _StabskorporalKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Stabskorporal;
private _Stabskorporal = _StabskorporalKeine + _StabskorporalPA + _StabskorporalKompakt1 + _Korporal;

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