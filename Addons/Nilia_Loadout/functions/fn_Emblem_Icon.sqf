//
//	Author: [EuDef]Nilia
//
//	Description:
//		Script zum Hinzufügen der "Setze Emblem" aktion zu einem Object
//
//	Parameter(s):
//                  0: Name des Objektes auf die Funktion angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_Emblem_Icon
//      TODO: Add Radius Heal to Flagge | Via Params flagge so ändern, dass nur ein Script benötigt wird: ["Fleck"|"Tropen"|"Multi",this] call Nilia_fnc_Loadout;

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Fahne konnte nicht initialisiert werden" };

_obj addAction ["<t color='#0000ff'>Setze Emblem", Nilia_fnc_SetRank];
_obj addAction ["<t color='#0000ff'>Vollständig Heilen", { params ["_target", "_caller"]; [_caller, _caller] call ace_medical_treatment_fnc_fullHeal; systemChat "Du wurdest vollständig geheilt!";}];

/*
hint "Flecktarn Ausrüstung wurde Geladen";
sleep 5;
hintSilent ""; // hides the previous hint display
 */