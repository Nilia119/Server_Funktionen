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
private _NoneItemsSan = [] call Nilia_fnc_Klasse_Items_SanItems;
private _NoneItemsSniperKlasse = [] call Nilia_fnc_Klasse_Items_Sniper;
private _NoneItemsDMRKlasse = [] call Nilia_fnc_Klasse_Items_DMR;
private _NoneItemscTABs = [] call Nilia_fnc_Klasse_Items_cTABs;
private _NoneItemscTABs1 = [] call Nilia_fnc_Klasse_Items_cTABs1;
private _NoneItemsLaserDesignator = [] call Nilia_fnc_Klasse_Items_LaserDesignator;
private _NoneKitbagMC = [] call Nilia_fnc_Klasse_Attire_Kitbag_Medic_Camo;
private _NoneGhillie = [] call Nilia_fnc_Klasse_Attire_Ghillie;
private _NoneItemsEH = [] call Nilia_fnc_Klasse_Items_EH;
private _NoneTortiliaM = [] call Nilia_fnc_Klasse_Attire_Tortilia_Medic;
private _NoneRF = [] call Nilia_fnc_Klasse_Items_StvGrpFhr;
private _none = _NoneKeine + _NoneDMR + _NoneItemsSan + _NoneItemsSniperKlasse + _NoneItemsDMRKlasse + _NoneItemscTABs + _NoneItemscTABs1 + _NoneItemsLaserDesignator + _NoneKitbagMC + _NoneGhillie + _NoneItemsEH + _NoneTortiliaM + _NoneRF;
// Gefreiter
private _GefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Gefreiter;
private _GefreiterDMR = [] call Nilia_fnc_Klasse_DMR_Gefreiter;
private _Gefreiter = _GefreiterKeine + _GefreiterDMR + _none;
// Obergefreiter
private _ObergefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Obergefreiter;
private _ObergefreiterDMR = [] call Nilia_fnc_Klasse_DMR_Obergefreiter;
private _Obergefreiter = _ObergefreiterKeine + _ObergefreiterDMR + _Gefreiter;
// Hauptgefreiter
private _HauptgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Hauptgefreiter;
private _HauptgefreiterDMR = [] call Nilia_fnc_Klasse_DMR_Hauptgefreiter;
private _Hauptgefreiter = _HauptgefreiterKeine + _HauptgefreiterDMR + _Obergefreiter;
// Stabsgefreiter
private _StabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Stabsgefreiter;
private _StabsgefreiterDMR = [] call Nilia_fnc_Klasse_DMR_Stabsgefreiter;
private _StabsgefreiterAssaultMC = [] call Nilia_fnc_Klasse_Attire_Assault_Medic_Camo;
private _StabsgefreiterMedicBp = [] call Nilia_fnc_Klasse_Attire_Backpacks;
private _Stabsgefreiter = _StabsgefreiterKeine + _StabsgefreiterDMR + _StabsgefreiterAssaultMC + _StabsgefreiterMedicBp + _Hauptgefreiter;
// Oberstabsgefreiter
private _OberstabsgefreiterKeine = [] call Nilia_fnc_Klasse_Keine_Oberstabsgefreiter;
private _OberstabsgefreiterDMR = [] call Nilia_fnc_Klasse_DMR_Oberstabsgefreiter;
private _Oberstabsgefreiter = _OberstabsgefreiterKeine + _OberstabsgefreiterDMR + _Stabsgefreiter;
// Korporal
private _KorporalKeine = [] call Nilia_fnc_Klasse_Keine_Korporal;
private _KorporalDMR = [] call Nilia_fnc_Klasse_DMR_Korporal;
private _Korporal = _KorporalKeine + _KorporalDMR + _Oberstabsgefreiter;
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