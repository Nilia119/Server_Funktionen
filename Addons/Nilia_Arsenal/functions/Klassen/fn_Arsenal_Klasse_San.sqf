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
private _NoneItemsSan = [] call Nilia_fnc_Klasse_Items_SanItems;
private _NoneItemsSanKlasse = [] call Nilia_fnc_Klasse_Items_San;
private _NoneItemscTABs = [] call Nilia_fnc_Klasse_Items_cTABs;
private _NoneTortiliaM = [] call Nilia_fnc_Klasse_Attire_Tortilia_Medic;
private _none = _NoneKeine + _NoneKompakt1 + _NoneItemsSan + _NoneItemsSanKlasse + _NoneItemscTABs + _NoneTortiliaM;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Gefreiter;
private _Gefreiter = _GefreiterKeine + _GefreiterKompakt1 + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Obergefreiter;
private _ObergefreiterTortiliaMC = [] call Nilia_fnc_Klasse_Attire_Tortilia_Medic_Camo;
private _ObergefreiterKitbagM = [] call Nilia_fnc_Klasse_Attire_Kitbag_Medic;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterKompakt1 + _ObergefreiterTortiliaMC + _ObergefreiterKitbagM + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Hauptgefreiter;
private _HauptgefreiterAssaultM = [] call Nilia_fnc_Klasse_Attire_Assault_Medic;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterKompakt1 + _HauptgefreiterAssaultM + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Stabsgefreiter;
private _StabsgefreiterKitbagMC = [] call Nilia_fnc_Klasse_Attire_Kitbag_Medic_Camo;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterKompakt1 + _StabsgefreiterKitbagMC + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Oberstabsgefreiter;
private _ObergefreiterAssaultMC = [] call Nilia_fnc_Klasse_Attire_Assault_Medic_Camo;
private _OberstabsgefreiterMedicBp = [] call Nilia_fnc_Klasse_Attire_Backpacks;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterKompakt1 + _ObergefreiterAssaultMC + _OberstabsgefreiterMedicBp + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Korporal;
private _Korporal = _KorporalKeine + _KorporalKompakt1 + _Oberstabsgefreiter;
// Stabskorporal
private _StabskorporalKeine = [] call Nilia_fnc_Klasse_Keine_Stabskorporal;
private _StabskorporalKompakt1 = [] call Nilia_fnc_Klasse_Kompakt1_Stabskorporal;
private _StabskorporalItemscTABs1 = [] call Nilia_fnc_Klasse_Items_cTABs1;
private _Stabskorporal = _StabskorporalKeine + _StabskorporalKompakt1 + _StabskorporalItemscTABs1 + _Korporal;

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