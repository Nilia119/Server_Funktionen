//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script Assigns items to arsenal based on Rank for Class DMR
//
//
//	Parameter(s):
//                  0: Rank of Player
//
//	Returns:
//		Array/Text
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Klasse_DMR
//		[0] call Nilia_fnc_Arsenal_Klasse_DMR

params [["_unit", objNull, [objNull]], ["_rang", 0, [0]]];


// None
private _NoneKeine = [] call Nilia_fnc_Klasse_Keine_None;
private _NoneDMR = [] call Nilia_fnc_Klasse_DMR_None;
private _NoneAttireDMR = [] call Nilia_fnc_Klasse_Attire_DMR;
private _NoneAttireAssault = [] call Nilia_fnc_Klasse_Attire_Assault;
private _NoneItemsDMR = [] call Nilia_fnc_Klasse_Items_DMR;
private _NoneItemsLaserDesignator = [] call Nilia_fnc_Klasse_Items_LaserDesignator;
private _none = _NoneKeine + _NoneDMR + _NoneAttireDMR + _NoneAttireAssault + _NoneItemsDMR + _NoneItemsLaserDesignator;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterDMR = [] call Nilia_fnc_Klasse_DMR_Gefreiter;
private _Gefreiter = _GefreiterKeine + _GefreiterDMR + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterDMR = [] call Nilia_fnc_Klasse_DMR_Obergefreiter;
private _ObergefreiterAttireFieldPack = [] call Nilia_fnc_Klasse_Attire_FieldPack;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterAttireFieldPack + _ObergefreiterDMR + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterDMR = [] call Nilia_fnc_Klasse_DMR_Hauptgefreiter;
private _HauptgefreiterAttireCiv = [] call Nilia_fnc_Klasse_Attire_Civ;
private _HauptgefreiterAttireTacticalPack = [] call Nilia_fnc_Klasse_Attire_TacticalPack;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterAttireCiv + _HauptgefreiterAttireTacticalPack + _HauptgefreiterDMR + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterDMR = [] call Nilia_fnc_Klasse_DMR_Stabsgefreiter;
private _StabsgefreiterViperL = [] call Nilia_fnc_Klasse_Attire_ViperL;
private _StabsgefreiterKitbag = [] call Nilia_fnc_Klasse_Attire_Kitbag;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterViperL + _StabsgefreiterKitbag +_StabsgefreiterDMR + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterDMR = [] call Nilia_fnc_Klasse_DMR_Oberstabsgefreiter;
private _OberstabsgefreiterViper = [] call Nilia_fnc_Klasse_Attire_Viper;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterViper + _OberstabsgefreiterDMR + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalDMR = [] call Nilia_fnc_Klasse_DMR_Korporal;
private _KorporalTortilia = [] call Nilia_fnc_Klasse_Attire_Tortilia;
private _Korporal = _KorporalKeine + _KorporalDMR + _KorporalTortilia + _Oberstabsgefreiter;
// Stabskorporal
private _StabskorporalKeine = [] call Nilia_fnc_Klasse_Keine_Stabskorporal;
private _StabskorporalDMR = [] call Nilia_fnc_Klasse_DMR_Stabskorporal;
private _Stabskorporal = _StabskorporalKeine + _StabskorporalDMR + _Korporal;

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