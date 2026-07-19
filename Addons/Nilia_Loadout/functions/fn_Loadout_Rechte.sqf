//
//	Author: [EuDef]Nilia
//
//	Description:
//		Script zum Hinzufügen der ACRE Sprachen zu einem Object
//
//	Parameter(s):
//                  0: Name des Objektes auf die Funktion angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_Loadout_Rechte
//

params [ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Fahne konnte nicht initialisiert werden" };

_obj addAction ["<t color='#0000ff'>Setze Emblem", { params ["_target", "_caller"]; [] call Nilia_fnc_SetRank; }];
_obj addAction ["<t color='#0000ff'>Vollständig Heilen", { params ["_target", "_caller"]; [_caller, _caller] call ace_medical_treatment_fnc_fullHeal; systemChat "Du wurdest vollständig geheilt!"; }];
_obj addAction ["<t color='#ff0000'>------------------------------", { params ["_target", "_caller"]; [] call Nilia_fnc_SetRank; }];
_obj addAction ["Sanrechte: Zurücksetzten", { params ["_target", "_caller"]; _caller setVariable ["ACE_medical_medicClass", 0, true]; systemChat "Du hast deine Sanirechte erfolgreich zurück (auf 0 gesetzt)"; }];
_obj addAction ["Sanrechte: Arzt", { params ["_target", "_caller"]; _caller setVariable ["ACE_medical_medicClass", 2, true]; [format ["%1 hat seine Rechte zu Arzt geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["Sanrechte: Sanitäter/EH", { params ["_target", "_caller"]; _caller setVariable ["ACE_medical_medicClass", 1, true]; [format ["%1 hat seine Rechte zu Sanitäter/EH geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["<t color='#ff0000'>------------------------------", { params ["_target", "_caller"]; [] call Nilia_fnc_SetRank; }];
_obj addAction ["Pionierrechte: Zurücksetzten", { params ["_target", "_caller"]; _caller setVariable ["ACE_isEOD", false, true]; _caller setVariable ["ACE_isEngineer", 0, true]; systemChat "Du hast deine Pionierrrechte erfolgreich zurück (auf 0 gesetzt)"; }];
_obj addAction ["Pionierrechte: EOD", { params ["_target", "_caller"]; _caller setVariable ["ACE_isEOD", true, true]; _caller setVariable ["ACE_isEngineer", 1, true]; [format ["%1 hat seine Rechte zu EOD (1) geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["Pionierrechte: Pionier", { params ["_target", "_caller"]; _caller setVariable ["ACE_isEOD", true, true]; _caller setVariable ["ACE_isEngineer", 2, true]; [format ["%1 hat seine Rechte zu Pionier (2) geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["<t color='#ff0000'>------------------------------", { params ["_target", "_caller"]; [] call Nilia_fnc_SetRank; }];
_obj addAction ["Alle Rechte: Zurücksetzten", { params ["_target", "_caller"]; _caller setVariable ["ACE_medical_medicClass", 0, true]; _caller setVariable ["ACE_isEOD", false, true]; _caller setVariable ["ACE_isEngineer", 0, true]; systemChat "Du hast deine Rechte alle erfolgreich zurück (auf 0 gesetzt)"; }];
_obj addAction ["Alle Rechte: Vergeben", { params ["_target", "_caller"]; _caller setVariable ["ACE_medical_medicClass", 2, true]; _caller setVariable ["ACE_isEOD", true, true]; _caller setVariable ["ACE_isEngineer", 2, true]; [format ["%1 hat seine Rechte zu Pionier bzw. Arzt geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
