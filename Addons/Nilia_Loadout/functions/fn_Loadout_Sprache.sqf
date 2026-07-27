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
//		[] call Nilia_fnc_Loadout_Sprache
//

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Fahne konnte nicht initialisiert werden" };

params [ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Fahne konnte nicht initialisiert werden" };

_obj addAction ["<t color='#0000ff'>Setze Emblem", { params ["_target", "_caller"]; [] call Nilia_fnc_SetRank; }];
_obj addAction ["<t color='#0000ff'>Vollständig Heilen", { params ["_target", "_caller"]; [_caller, _caller] call ace_medical_treatment_fnc_fullHeal; systemChat "Du wurdest vollständig geheilt!"; }];
_obj addAction ["<t color='#ff0000'>------------------------------", { params ["_target", "_caller"]; [] call Nilia_fnc_SetRank; }];
_obj addAction ["Sprache: Englisch (BLUFOR)", { params ["_target", "_caller"]; _caller setVariable ["f_languages", ["en"], true]; ["en"] call acre_api_fnc_babelSetSpokenLanguages; [format ["%1 hat seine Sprache auf Englisch geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["Sprache: Russisch (OPFOR)", { params ["_target", "_caller"]; _caller setVariable ["f_languages", ["ru"], true]; ["ru"] call acre_api_fnc_babelSetSpokenLanguages; [format ["%1 hat seine Sprache auf Russisch geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["Sprache: Griechisch (INDPFOR)", { params ["_target", "_caller"]; _caller setVariable ["f_languages", ["gr"], true]; ["gr"] call acre_api_fnc_babelSetSpokenLanguages; [format ["%1 hat seine Sprache auf Griechisch geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["Sprache: Arabisch (Zivil)", { params ["_target", "_caller"]; _caller setVariable ["f_languages", ["ar"], true]; ["ar"] call acre_api_fnc_babelSetSpokenLanguages; [format ["%1 hat seine Sprache auf Arabisch geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["<t color='#ff0000'>------------------------------", { params ["_target", "_caller"]; [] call Nilia_fnc_SetRank; }];
_obj addAction ["Sprache: Englisch + Russisch", { params ["_target", "_caller"]; _caller setVariable ["f_languages", ["en","ru"], true]; ["en","ru"] call acre_api_fnc_babelSetSpokenLanguages; [format ["%1 hat seine Sprache auf Englisch & Russisch geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["Sprache: Englisch + Griechisch", { params ["_target", "_caller"]; _caller setVariable ["f_languages", ["en","gr"], true]; ["en","gr"] call acre_api_fnc_babelSetSpokenLanguages; [format ["%1 hat seine Sprache auf Englisch & Griechisch geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["Sprache: Englisch + Arabisch", { params ["_target", "_caller"]; _caller setVariable ["f_languages", ["en","ar"], true]; ["en","ar"] call acre_api_fnc_babelSetSpokenLanguages; [format ["%1 hat seine Sprache auf Englisch & Arabisch geändert.", name _caller]] remoteExec ["systemChat", 0]; }];
_obj addAction ["<t color='#ff0000'>------------------------------", { params ["_target", "_caller"]; [] call Nilia_fnc_SetRank; }];
_obj addAction ["Sprache: Dolmetscher - Alle", { params ["_target", "_caller"]; _caller setVariable ["f_languages", ["en","ru","gr","ar"], true]; ["en","ru","gr","ar"] call acre_api_fnc_babelSetSpokenLanguages; [format ["%1 hat sich zum Dolmetscher gemacht und spricht alle Sprachen!", name _caller]] remoteExec ["systemChat", 0]; }];
