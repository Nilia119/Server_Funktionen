//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script Assigns items to arsenal based on Rank for Class Kompakt1
//
//
//	Parameter(s):
//                  0: Rank of Player
//
//	Returns:
//		Array/Text
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Klasse_Kompakt1
//		[0] call Nilia_fnc_Arsenal_Klasse_Kompakt1

params [["_unit", objNull, [objNull]], ["_rang", 0, [0]]];


// None
private _NoneKeine = [] call Nilia_fnc_Klasse_Keine_None;
private _NoneKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_None;
private _NoneItemsAA = [] call Nilia_fnc_Klasse_Items_AA;
private _HauptgefreiterTacticalPack = [] call Nilia_fnc_Klasse_Attire_TacticalPack;
private _none = _NoneKeine + _NoneKompakt1 + _NoneItemsAA + _HauptgefreiterTacticalPack;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Gefreiter;
private _GefreiterAssault = [] call Nilia_fnc_Klasse_Attire_Assault;
private _Gefreiter = _GefreiterKeine + _GefreiterKompakt1 + _GefreiterAssault + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Obergefreiter;
private _ObergefreiterFieldPack = [] call Nilia_fnc_Klasse_Attire_FieldPack;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterKompakt1 + _ObergefreiterFieldPack + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Hauptgefreiter;
private _HauptgefreiterCiv = [] call Nilia_fnc_Klasse_Attire_Civ;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterKompakt1 + _HauptgefreiterCiv + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Stabsgefreiter;
private _StabsgefreiterViperL = [] call Nilia_fnc_Klasse_Attire_ViperL;
private _StabsgefreiterKitbag = [] call Nilia_fnc_Klasse_Attire_Kitbag;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterKompakt1 + _StabsgefreiterViperL + _StabsgefreiterKitbag + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Oberstabsgefreiter;
private _OberstabsgefreiterViper = [] call Nilia_fnc_Klasse_Attire_Viper;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterKompakt1 + _OberstabsgefreiterViper + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Korporal;
private _KorporalTortilia = [] call Nilia_fnc_Klasse_Attire_Tortilia;
private _Korporal = _KorporalKeine + _KorporalKompakt1 + _KorporalTortilia + _Oberstabsgefreiter;
// Stabskorporal
private _StabskorporalKeine = [] call Nilia_fnc_Klasse_Keine_Stabskorporal;
private _StabskorporalKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Stabskorporal;
private _StabskorporalUAV = [] call Nilia_fnc_Klasse_Attire_UAV;
private _Stabskorporal = _StabskorporalKeine + _StabskorporalKompakt1 + _StabskorporalUAV + _Korporal;

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