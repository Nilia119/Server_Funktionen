//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script zum Hinzufügen von Debugaktionen zu einem Object
//
//	Parameter(s):
//                  0: Name des Objektes auf die Funktion angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Debug_Klasse;
//		[this] call Nilia_fnc_Arsenal_Debug_Klasse;
//

// Wird nicht zu Objekt hinzugefügt!

params ["_obj"];

private _klassen = [
["Standard", "Standard"],
["Kompakt1", "Kompakt1"],
["Kompakt2", "Kompakt2"],
["ULG", "ULG"],
["MG", "MG"],
["PA", "PA"],
["LAT", "LAT"],
["DMR", "DMR"],
["Sani", "Sani"],
["Sniper", "Sniper"]
];

// Klassen-Auswahl
{
private _anzeigeName = _x select 0;
private _klassenWert = _x select 1;

_obj addAction [
        format ["Setze Klasse: %1", _anzeigeName],
                {
                        params ["_target", "_caller", "_actionId", "_klassenWert"];
                _caller setVariable ["Nilia_Klasse", _klassenWert];
                private _msg = format ["%1 hat seine Klasse zu %2 geändert.", name _caller, _klassenWert];
                [_msg] remoteExec ["systemChat", 0]; // Nachricht für alle sichtbar
                },
                _klassenWert // Übergabe als Argument
];
} forEach _klassen;

// Zurücksetzen von Klasse und Rang
_obj addAction [
        "Setze Klasse und Rang zurück",
                {
                        params ["_target", "_caller"];
                _caller setVariable ["Nilia_Klasse", nil];
                _caller setVariable ["Nilia_Rang", nil];
                systemChat "Du hast deine Klasse und Rang erfolgreich zurückgesetzt, bitte lade ein Standardloadout an der Fahne, damit alles wieder korrekt funktioniert!";
                },
                nil,
                1.5,
                true,
                true,
                "",
                "true",
                5
];