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
//		[] call Nilia_fnc_Fleck
//		[this] call Nilia_fnc_Fleck;
//
//      TODO: Add Radius Heal to Flagge | Via Params flagge so ändern, dass nur ein Script benötigt wird: ["Fleck"|"Tropen"|"Multi",this] call Nilia_fnc_Loadout;

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Loadouts konnten nicht geladen werden" };

[_obj, "Fleck"] call Nilia_fnc_Loadout;
/*
_obj addAction ["<t color='#0000ff'>Setze Emblem", Nilia_fnc_SetRank];
_obj addAction ["<t color='#0000ff'>Vollständig Heilen", { params ["_target", "_caller"]; [_caller, _caller] call ace_medical_treatment_fnc_fullHeal; systemChat "Du wurdest vollständig geheilt!";}];
_obj addAction ["<t color='#ff0000'>------------------------------", Nilia_fnc_SetRank];
_obj addAction ["Loadout: Breacher", Nilia_fnc_Loadout_Fleck_Breacher];
_obj addAction ["Loadout: DMR-Schütze", Nilia_fnc_Loadout_Fleck_DMR];
_obj addAction ["Loadout: Gruppenführer", Nilia_fnc_Loadout_Fleck_GrpFhr];
_obj addAction ["Loadout: Grenadier", Nilia_fnc_Loadout_Fleck_Gren];
_obj addAction ["Loadout: MG-Schütze", Nilia_fnc_Loadout_Fleck_HMG];
_obj addAction ["Loadout: MG-Hilf Schütze", Nilia_fnc_Loadout_Fleck_HMGHilf];
_obj addAction ["Loadout: Panzerabwehr Schütze", Nilia_fnc_Loadout_Fleck_PA];
_obj addAction ["Loadout: PA-Hilf Schütze", Nilia_fnc_Loadout_Fleck_PAHilf];
_obj addAction ["Loadout: Pionier", Nilia_fnc_Loadout_Fleck_Pio];
_obj addAction ["Loadout: Sanitäter", Nilia_fnc_Loadout_Fleck_San];
_obj addAction ["Loadout: Schütze", Nilia_fnc_Loadout_Fleck_Schutze];
_obj addAction ["Loadout: Schütze-LAT", Nilia_fnc_Loadout_Fleck_SchutzeLAT];
_obj addAction ["Loadout: Schütze-EH", Nilia_fnc_Loadout_Fleck_SchutzeEH];
_obj addAction ["Loadout: Munitionsträger", Nilia_fnc_Loadout_Fleck_MunT];
_obj addAction ["Loadout: Stv. GrpFhr.", Nilia_fnc_Loadout_Fleck_StvGrpFhr];
_obj addAction ["Loadout: Truppführer", Nilia_fnc_Loadout_Fleck_TrpFhr];
_obj addAction ["Loadout: Flugabwehr Schütze", Nilia_fnc_Loadout_Fleck_AA];
_obj addAction ["Loadout: AA-Hilf Schütze", Nilia_fnc_Loadout_Fleck_AAHilf];
_obj addAction ["<t color='#ff0000'>------------------------------", Nilia_fnc_SetRank];
_obj addAction ["Loadout: Kompanieführung", Nilia_fnc_Loadout_Fleck_KpFhr];
_obj addAction ["Loadout: Zugführer", Nilia_fnc_Loadout_Fleck_ZgFhr];
_obj addAction ["Loadout: Beobachter", Nilia_fnc_Loadout_Fleck_Spotter];
_obj addAction ["Loadout: Scharfschütze", Nilia_fnc_Loadout_Fleck_Sniper];
_obj addAction ["<t color='#ff0000'>------------------------------", Nilia_fnc_SetRank];
_obj addAction ["Loadout: Jet Pilot", Nilia_fnc_Loadout_Allgemein_JetPilot];
_obj addAction ["Loadout: Helikopter Pilot", Nilia_fnc_Loadout_Allgemein_HeliPilot];
_obj addAction ["Loadout: Fahrzeugbesatzung", Nilia_fnc_Loadout_Fleck_Schutze];

_obj addAction ["<t color='#ff0000'>------------------------------", Nilia_fnc_SetRank];
_obj addAction ["Loadout: Schütze NEU Fleck", Nilia_fnc_Loadout_Schutze, "Fleck"];
_obj addAction ["Loadout: Schütze NEU Tropen", Nilia_fnc_Loadout_Schutze, "Tropen"];
_obj addAction ["Loadout: Schütze NEU Multi", Nilia_fnc_Loadout_Schutze, "Multi"];
_obj addAction ["Loadout: Schütze NEU Schnee", Nilia_fnc_Loadout_Schutze, "Schnee"];
_obj addAction ["Loadout: Schütze NEU Default (tropen)", Nilia_fnc_Loadout_Schutze];

/*
hint "Flecktarn Ausrüstung wurde Geladen";
sleep 5;
hintSilent ""; // hides the previous hint display
 */