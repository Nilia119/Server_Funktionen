//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script Assigns items to arsenal based on Rank for Class ULG
//
//
//	Parameter(s):
//                  0: Rank of Player
//
//	Returns:
//		Array/Text
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Klasse_ULG
//		[0] call Nilia_fnc_Arsenal_Klasse_ULG

params [["_unit", objNull, [objNull]], ["_rang", 0, [0]]];


// None
private _NoneKeine = [] call Nilia_fnc_Klasse_Keine_None;
private _NoneAttireAssault = [] call Nilia_fnc_Klasse_Attire_Assault;
private _NoneULG = [] call Nilia_fnc_Klasse_ULG_None;
private _NoneRF = [] call Nilia_fnc_Klasse_Items_StvGrpFhr;
private _none = _NoneKeine + _NoneAttireAssault + _NoneULG + _NoneRF;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterULG = [] call Nilia_fnc_Klasse_ULG_Gefreiter;
private _Gefreiter = _GefreiterKeine + _GefreiterULG + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterULG = [] call Nilia_fnc_Klasse_ULG_Obergefreiter;
private _ObergefreiterAttireFieldPack = [] call Nilia_fnc_Klasse_Attire_FieldPack;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterAttireFieldPack + _ObergefreiterULG + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterULG = [] call Nilia_fnc_Klasse_ULG_Hauptgefreiter;
private _HauptgefreiterAttireCiv = [] call Nilia_fnc_Klasse_Attire_Civ;
private _HauptgefreiterAttireTacticalPack = [] call Nilia_fnc_Klasse_Attire_TacticalPack;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterAttireCiv + _HauptgefreiterAttireTacticalPack + _HauptgefreiterULG + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterULG = [] call Nilia_fnc_Klasse_ULG_Stabsgefreiter;
private _StabsgefreiterViperL = [] call Nilia_fnc_Klasse_Attire_ViperL;
private _StabsgefreiterKitbag = [] call Nilia_fnc_Klasse_Attire_Kitbag;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterViperL + _StabsgefreiterKitbag + _StabsgefreiterULG + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterULG = [] call Nilia_fnc_Klasse_ULG_Oberstabsgefreiter;
private _OberstabsgefreiterViper = [] call Nilia_fnc_Klasse_Attire_Viper;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterViper + _OberstabsgefreiterULG + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalULG = [] call Nilia_fnc_Klasse_ULG_Korporal;
private _KorporalTortilia = [] call Nilia_fnc_Klasse_Attire_Tortilia;
private _KorporalPredator = [] call Nilia_fnc_Klasse_Attire_Predator;
private _Korporal = _KorporalKeine + _KorporalTortilia + _KorporalPredator + _KorporalULG + _Oberstabsgefreiter;
// Stabskorporal
private _StabskorporalKeine = [] call Nilia_fnc_Klasse_Keine_Stabskorporal;
private _StabskorporalULG = [] call Nilia_fnc_Klasse_ULG_Stabskorporal;
private _Stabskorporal = _StabskorporalKeine + _StabskorporalULG + _Korporal;

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