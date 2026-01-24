//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script Assigns items to arsenal based on Rank for Class Standard
//
//
//	Parameter(s):
//                  0: Rank of Player
//
//	Returns:
//		Array/Text
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Klasse_Standard
//		[0] call Nilia_fnc_Arsenal_Klasse_Standard

params [["_unit", objNull, [objNull]], ["_rang", 0, [0]]];


// None
private _NoneKeine = [] call Nilia_fnc_Klasse_Keine_None;
private _NoneStandard = [] call Nilia_fnc_Klasse_Standard_None;
private _NoneAssaultM = [] call Nilia_fnc_Klasse_Attire_Assault_Medic;
private _NoneItemsEH = [] call Nilia_fnc_Klasse_Items_EH;
private _none = _NoneKeine + _NoneStandard + _NoneAssaultM + _NoneItemsEH;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterStandard = [] call Nilia_fnc_Klasse_Standard_Gefreiter;
private _Gefreiter = _GefreiterKeine + _GefreiterStandard + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterStandard = [] call Nilia_fnc_Klasse_Standard_Obergefreiter;
private _ObergefreiterKitbagM = [] call Nilia_fnc_Klasse_Attire_Kitbag_Medic;
private _ObergefreiterAssaultMC = [] call Nilia_fnc_Klasse_Attire_Assault_Medic_Camo;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterStandard + _ObergefreiterKitbagM + _ObergefreiterAssaultMC + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterStandard = [] call Nilia_fnc_Klasse_Standard_Hauptgefreiter;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterStandard + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterStandard = [] call Nilia_fnc_Klasse_Standard_Stabsgefreiter;
private _StabsgefreiterKitbagMC = [] call Nilia_fnc_Klasse_Attire_Kitbag_Medic_Camo;
private _StabsgefreiterMedicBp = [] call Nilia_fnc_Klasse_Attire_Backpacks;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterStandard + _StabsgefreiterKitbagMC + _StabsgefreiterMedicBp + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterStandard = [] call Nilia_fnc_Klasse_Standard_Oberstabsgefreiter;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterStandard + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalStandard = [] call Nilia_fnc_Klasse_Standard_Korporal;
private _Korporal = _KorporalKeine + _KorporalStandard + _Oberstabsgefreiter;
// Stabskorporal
private _StabskorporalKeine = [] call Nilia_fnc_Klasse_Keine_Stabskorporal;
private _StabskorporalStandard = [] call Nilia_fnc_Klasse_Standard_Stabskorporal;
private _Stabskorporal = _StabskorporalKeine + _StabskorporalStandard + _Korporal;

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