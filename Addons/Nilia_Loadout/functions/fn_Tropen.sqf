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
//		[] call Nilia_fnc_Tropen
//		[this] call Nilia_fnc_Tropen;
//

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Loadouts konnten nicht geladen werden" };

_obj addAction ["Setze Emblem", Nilia_fnc_SetRank];
_obj addAction ["Loadout: Breacher", Nilia_fnc_Loadout_Tropen_Breacher];
_obj addAction ["Loadout: DMR-Schütze", Nilia_fnc_Loadout_Tropen_DMR];
_obj addAction ["Loadout: Gruppenführer", Nilia_fnc_Loadout_Tropen_GrpFhr];
_obj addAction ["Loadout: Grenadier", Nilia_fnc_Loadout_Tropen_Gren];
_obj addAction ["Loadout: LMG-Schütze", Nilia_fnc_Loadout_Tropen_LMG];
_obj addAction ["Loadout: MG-Schütze", Nilia_fnc_Loadout_Tropen_HMG];
_obj addAction ["Loadout: MG-Hilfs Schütze", Nilia_fnc_Loadout_Tropen_HMGHilf];
_obj addAction ["Loadout: Panzerabwehr Schütze", Nilia_fnc_Loadout_Tropen_PA];
_obj addAction ["Loadout: PA Hilfs Schütze", Nilia_fnc_Loadout_Tropen_PAHilf];
_obj addAction ["Loadout: Pionier", Nilia_fnc_Loadout_Tropen_Pio];
_obj addAction ["Loadout: Sanitäter", Nilia_fnc_Loadout_Tropen_San];
_obj addAction ["Loadout: Sanitäter-KAT", Nilia_fnc_Loadout_Tropen_SanKAT];
_obj addAction ["Loadout: Schütze", Nilia_fnc_Loadout_Tropen_Schutze];
_obj addAction ["Loadout: Schütze-EH", Nilia_fnc_Loadout_Tropen_SchutzeEH];
_obj addAction ["Loadout: Schütze-EH-KAT", Nilia_fnc_Loadout_Tropen_SchutzeEHKAT];
_obj addAction ["Loadout: Stv. GrpFhr.", Nilia_fnc_Loadout_Tropen_StvGrpFhr];
_obj addAction ["Loadout: Kompanieführung", Nilia_fnc_Loadout_Tropen_KpFhr];
_obj addAction ["Loadout: Zugführung", Nilia_fnc_Loadout_Tropen_ZgFhr];
_obj addAction ["Loadout: Beobachter", Nilia_fnc_Loadout_Tropen_Spotter];
_obj addAction ["Loadout: Scharfschütze", Nilia_fnc_Loadout_Tropen_Sniper];
_obj addAction ["Loadout: Jet Pilot", Nilia_fnc_Loadout_Allgemein_JetPilot];
_obj addAction ["Loadout: Helikopter Pilot", Nilia_fnc_Loadout_Allgemein_HeliPilot];
_obj addAction ["Loadout: Fahrzeugbesatzung", Nilia_fnc_Loadout_Tropen_Schutze];

/*
hint "Tropentarn Ausrüstung wurde Geladen";
sleep 5;
hintSilent ""; // hides the previous hint display
 */