//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script Assigns items to arsenal based on Rank for Class LAT
//
//
//	Parameter(s):
//                  0: Rank of Player
//
//	Returns:
//		Array/Text
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Klasse_LAT
//		[0] call Nilia_fnc_Arsenal_Klasse_LAT

params [["_unit", objNull, [objNull]], ["_rang", 0, [0]]];


// None
private _NoneKeine = [] call Nilia_fnc_Klasse_Keine_None;
private _NoneLAT = [] call Nilia_fnc_Klasse_LAT_None;
private _NoneStandard = [] call Nilia_fnc_Klasse_Standard_None;
private _none = _NoneKeine + _NoneStandard + _NoneLAT;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterLAT = [] call Nilia_fnc_Klasse_LAT_Gefreiter;
private _GefreiterStandard = [] call Nilia_fnc_Klasse_Standard_Gefreiter;
private _GefreiterAssault = [] call Nilia_fnc_Klasse_Attire_Assault;
private _Gefreiter = _GefreiterKeine + _GefreiterLAT + _GefreiterStandard + _GefreiterAssault + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterLAT = [] call Nilia_fnc_Klasse_LAT_Obergefreiter;
private _ObergefreiterStandard = [] call Nilia_fnc_Klasse_Standard_Obergefreiter;
private _ObergefreiterFieldPack = [] call Nilia_fnc_Klasse_Attire_FieldPack;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterLAT + _ObergefreiterStandard + _ObergefreiterFieldPack + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterLAT = [] call Nilia_fnc_Klasse_LAT_Hauptgefreiter;
private _HauptgefreiterStandard = [] call Nilia_fnc_Klasse_Standard_Hauptgefreiter;
private _HauptgefreiterCiv = [] call Nilia_fnc_Klasse_Attire_Civ;
private _HauptgefreiterTacticalPack = [] call Nilia_fnc_Klasse_Attire_TacticalPack;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterLAT + _HauptgefreiterStandard + _HauptgefreiterCiv + _HauptgefreiterTacticalPack + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterLAT = [] call Nilia_fnc_Klasse_LAT_Stabsgefreiter;
private _StabsgefreiterStandard = [] call Nilia_fnc_Klasse_Standard_Stabsgefreiter;
private _StabsgefreiterViperL = [] call Nilia_fnc_Klasse_Attire_ViperL;
private _StabsgefreiterKitbag = [] call Nilia_fnc_Klasse_Attire_Kitbag;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterLAT + _StabsgefreiterStandard + _StabsgefreiterViperL + _StabsgefreiterKitbag + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterLAT = [] call Nilia_fnc_Klasse_LAT_Oberstabsgefreiter;
private _OberstabsgefreiterStandard = [] call Nilia_fnc_Klasse_Standard_Oberstabsgefreiter;
private _OberstabsgefreiterViper = [] call Nilia_fnc_Klasse_Attire_Viper;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterLAT + _OberstabsgefreiterStandard + _OberstabsgefreiterViper + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalLAT = [] call Nilia_fnc_Klasse_LAT_Korporal;
private _KorporalStandard = [] call Nilia_fnc_Klasse_Standard_Korporal;
private _KorporalTortilia = [] call Nilia_fnc_Klasse_Attire_Tortilia;
private _Korporal = _KorporalKeine + _KorporalLAT + _KorporalStandard + _KorporalTortilia + _Oberstabsgefreiter;
// Stabskorporal
private _StabskorporalKeine = [] call Nilia_fnc_Klasse_Keine_Stabskorporal;
private _StabskorporalLAT = [] call Nilia_fnc_Klasse_LAT_Stabskorporal;
private _StabskorporalStandard = [] call Nilia_fnc_Klasse_Standard_Stabskorporal;
private _StabskorporalUAV = [] call Nilia_fnc_Klasse_Attire_UAV;
private _Stabskorporal = _StabskorporalKeine + _StabskorporalLAT + _StabskorporalStandard + _StabskorporalUAV + _Korporal;

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