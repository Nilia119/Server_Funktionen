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
private _NoneULG = [] call Nilia_fnc_Klasse_ULG_None;
private _NoneRadio = [] call Nilia_fnc_Klasse_Attire_ZgFhr;
private _NonecTABs = [] call Nilia_fnc_Klasse_Items_cTABs;
private _NonecTABs1 = [] call Nilia_fnc_Klasse_Items_cTABs1;
private _NoneLaser = [] call Nilia_fnc_Klasse_Items_LaserDesignator;
private _NoneItemsSan = [] call Nilia_fnc_Klasse_Items_SanItems;
private _NoneItemsSanKlasse = [] call Nilia_fnc_Klasse_Items_San;
private _NoneRF = [] call Nilia_fnc_Klasse_Items_StvGrpFhr;
private _NoneItemsZgFhr = [] call Nilia_fnc_Klasse_Items_ZgFhr;
private _NoneTortiliaM = [] call Nilia_fnc_Klasse_Attire_Tortilia_Medic;
private _NoneUAV = [] call Nilia_fnc_Klasse_Attire_UAV;
private _none = _NoneKeine + _NoneRadio + _NonecTABs + _NonecTABs1 + _NoneLaser + _NoneRF + _NoneItemsSan + _NoneItemsSanKlasse + _NoneItemsZgFhr + _NoneTortiliaM + _NoneUAV + _NoneULG;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterULG = [] call Nilia_fnc_Klasse_ULG_Gefreiter;
private _Gefreiter = _GefreiterKeine + _GefreiterULG + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterULG = [] call Nilia_fnc_Klasse_ULG_Obergefreiter;
private _ObergefreiterTortiliaMC = [] call Nilia_fnc_Klasse_Attire_Tortilia_Medic_Camo;
private _ObergefreiterKitbagM = [] call Nilia_fnc_Klasse_Attire_Kitbag_Medic;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterULG + _ObergefreiterTortiliaMC + _ObergefreiterKitbagM + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterULG = [] call Nilia_fnc_Klasse_ULG_Hauptgefreiter;
private _HauptgefreiterAssaultM = [] call Nilia_fnc_Klasse_Attire_Assault_Medic;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterULG + _HauptgefreiterAssaultM + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterULG = [] call Nilia_fnc_Klasse_ULG_Stabsgefreiter;
private _StabsgefreiterKitbagMC = [] call Nilia_fnc_Klasse_Attire_Kitbag_Medic_Camo;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterULG + _StabsgefreiterKitbagMC + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterULG = [] call Nilia_fnc_Klasse_ULG_Oberstabsgefreiter;
private _ObergefreiterAssaultMC = [] call Nilia_fnc_Klasse_Attire_Assault_Medic_Camo;
private _StabsgefreiterMedicBp = [] call Nilia_fnc_Klasse_Attire_Backpacks;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterULG + _ObergefreiterAssaultMC + _StabsgefreiterMedicBp + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalULG = [] call Nilia_fnc_Klasse_ULG_Korporal;
private _Korporal = _KorporalKeine + _KorporalULG + _Oberstabsgefreiter;
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