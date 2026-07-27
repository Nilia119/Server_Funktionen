//
//	Author: [9.JgKp]Nilia
//
//	Description:
//		Script zum Hinzufügen der Ladbaren Ausrüstungen zu einem Object
//
//	Parameter(s):
//                  0: Name des Objektes auf die Funktion angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_Loadout
//		[this, "Fleck"] call Nilia_fnc_Loadout;
//      "FLeck"; "Tropen"; "Schnee"; "Multi";
//      TODO: Add Radius Heal to Flagge | Via Params flagge so ändern, dass nur ein Script benötigt wird: ["Fleck"|"Tropen"|"Multi",this] call Nilia_fnc_Loadout;

params [
["_obj", objNull, [objNull]],
["_farbe", "Fleck", [""]]
];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Loadouts konnten nicht geladen werden" };

_obj addAction ["<t color='#0000ff'>Setze Emblem", Nilia_fnc_SetRank];
_obj addAction ["<t color='#0000ff'>Vollständig Heilen", { params ["_target", "_caller"]; [_caller, _caller] call ace_medical_treatment_fnc_fullHeal; systemChat "Du wurdest vollständig geheilt!";}];
_obj addAction ["<t color='#ff0000'>Hinweis Fahne 2.0</t>", { call Nilia_fnc_SetRank; systemChat "Das ist ein Hinweis, diese Fahne wurde mit Flagge 2.0 initialisiert! Dieser Hinweis verschwindet in Kürze!";}];
_obj addAction ["<t color='#ff0000'>------------------------------", Nilia_fnc_SetRank];
_obj addAction ["Loadout2: Breacher", Nilia_fnc_Loadout_Breacher, _farbe];
_obj addAction ["Loadout2: DMR-Schütze", Nilia_fnc_Loadout_DMR, _farbe];
_obj addAction ["Loadout2: Gruppenführer", Nilia_fnc_Loadout_GrpFhr, _farbe];
_obj addAction ["Loadout2: Grenadier", Nilia_fnc_Loadout_Gren, _farbe];
_obj addAction ["Loadout2: MG-Schütze", Nilia_fnc_Loadout_HMG, _farbe];
_obj addAction ["Loadout2: MG-Hilf Schütze", Nilia_fnc_Loadout_HMGHilf, _farbe];
_obj addAction ["Loadout2: Panzerabwehr Schütze", Nilia_fnc_Loadout_PA, _farbe];
_obj addAction ["Loadout2: PA-Hilf Schütze", Nilia_fnc_Loadout_PAHilf, _farbe];
_obj addAction ["Loadout2: Pionier", Nilia_fnc_Loadout_Pio, _farbe];
_obj addAction ["Loadout2: Sanitäter", Nilia_fnc_Loadout_San, _farbe];
_obj addAction ["Loadout2: Schütze", Nilia_fnc_Loadout_Schutze, _farbe];
_obj addAction ["Loadout2: Schütze-LAT", Nilia_fnc_Loadout_SchutzeLAT, _farbe];
_obj addAction ["Loadout2: Schütze-EH", Nilia_fnc_Loadout_SchutzeEH, _farbe];
_obj addAction ["Loadout2: Munitionsträger", Nilia_fnc_Loadout_MunT, _farbe];
_obj addAction ["Loadout2: Stv. GrpFhr.", Nilia_fnc_Loadout_StvGrpFhr, _farbe];
_obj addAction ["Loadout2: Truppführer", Nilia_fnc_Loadout_TrpFhr, _farbe];
_obj addAction ["Loadout2: Flugabwehr Schütze", Nilia_fnc_Loadout_AA, _farbe];
_obj addAction ["Loadout2: AA-Hilf Schütze", Nilia_fnc_Loadout_AAHilf, _farbe];
_obj addAction ["<t color='#ff0000'>------------------------------", Nilia_fnc_SetRank];
_obj addAction ["Loadout2: Kompanieführung", Nilia_fnc_Loadout_KpFhr, _farbe];
_obj addAction ["Loadout2: Zugführer", Nilia_fnc_Loadout_ZgFhr, _farbe];
_obj addAction ["Loadout2a: Stv. Zugführer", Nilia_fnc_Loadout_ZgFhr, _farbe];
_obj addAction ["Loadout2: Beobachter", Nilia_fnc_Loadout_Spotter, _farbe];
_obj addAction ["Loadout2: Scharfschütze", Nilia_fnc_Loadout_Sniper, _farbe];
_obj addAction ["<t color='#ff0000'>------------------------------", Nilia_fnc_SetRank];
_obj addAction ["Loadout: Jet Pilot", Nilia_fnc_Loadout_Allgemein_JetPilot, _farbe];
_obj addAction ["Loadout: Helikopter Pilot", Nilia_fnc_Loadout_Allgemein_HeliPilot, _farbe];
_obj addAction ["Loadout2a: Fahrzeugbesatzung", Nilia_fnc_Loadout_Schutze, _farbe];

/*
hint "Flecktarn Ausrüstung wurde Geladen";
sleep 5;
hintSilent ""; // hides the previous hint display
 */