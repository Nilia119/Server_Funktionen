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
//		[] call Nilia_fnc_Arsenal_RK_Debug;
//		[this] call Nilia_fnc_Arsenal_RK_Debug;
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

// Rang-Setzung (0 bis 7)
for "_i" from 0 to 7 do {
_obj addAction [
        format ["Setze Rang: %1", _i],
                {
                        params ["_target", "_caller", "_actionId", "_rangWert"];
                _caller setVariable ["Nilia_Rang", _rangWert];
                systemChat format ["Rang auf %1 gesetzt", _rangWert];
                },
                _i // Übergabe des Rangs
];
};




/*
params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Loadouts konnten nicht geladen werden" };

_obj addAction ["Setze Emblem", Nilia_fnc_SetRank];

/*
_obj addAction ["Setze Klasse: Standard", {
        params ["_target", "_caller"];
        [format ["%1 hat seine Klasse auf Standard gesetzt!", name _caller]] remoteExec ["systemChat", 0];
        _caller setVariable ["Nilia_Klasse", "Standard"];
}];

_obj addAction ["Setze Klasse: Kompakt1", {
        params ["_target", "_caller"];
        [format ["%1 hat seine Klasse auf Kompakt1 gesetzt!", name _caller]] remoteExec ["systemChat", 0];
        _caller setVariable ["Nilia_Klasse", "Kompakt1"];
}];

_obj addAction ["Setze Klasse: Kompakt2", {
        params ["_target", "_caller"];
        [format ["%1 hat seine Klasse auf Kompakt2 gesetzt!", name _caller]] remoteExec ["systemChat", 0];
        _caller setVariable ["Nilia_Klasse", "Kompakt2"];
}];

_obj addAction ["Setze Klasse: MG", {
        params ["_target", "_caller"];
        [format ["%1 hat seine Klasse auf MG gesetzt!", name _caller]] remoteExec ["systemChat", 0];
        _caller setVariable ["Nilia_Klasse", "MG"];
}];

_obj addAction ["Setze Klasse: LAT", {
        params ["_target", "_caller"];
        [format ["%1 hat seine Klasse auf LAT gesetzt!", name _caller]] remoteExec ["systemChat", 0];
        _caller setVariable ["Nilia_Klasse", "LAT"];
}];

_obj addAction ["Setze Klasse: Sniper", {
        params ["_target", "_caller"];
        [format ["%1 hat seine Klasse auf Sniper gesetzt!", name _caller]] remoteExec ["systemChat", 0];
        _caller setVariable ["Nilia_Klasse", "Sniper"];
}];

_obj addAction ["Setze Klasse: DMR", {
        params ["_target", "_caller"];
        [format ["%1 hat seine Klasse auf DMR gesetzt!", name _caller]] remoteExec ["systemChat", 0];
        _caller setVariable ["Nilia_Klasse", "DMR"];
}];

_obj addAction ["Setze Klasse: Grenadier", {
        params ["_target", "_caller"];
        [format ["%1 hat seine Klasse auf Grenadier gesetzt!", name _caller]] remoteExec ["systemChat", 0];
        _caller setVariable ["Nilia_Klasse", "Grenadier"];
}];

_obj addAction ["Setze Klasse: PA", {
        params ["_target", "_caller"];
        [format ["%1 hat seine Klasse auf PA gesetzt!", name _caller]] remoteExec ["systemChat", 0];
        _caller setVariable ["Nilia_Klasse", "PA"];
}];

_obj addAction ["Setze Klasse und Rang zurück", {
        params ["_target", "_caller"];
        _caller setVariable ["Nilia_Klasse", nil];
        _caller setVariable ["Nilia_Rang", nil];
        _caller systemChat "Du hast deine Klasse und Rang erfolgreich zurückgesetzt, bitte lade ein Standardloadout an der Fahne, damit alles wieder korrekt funktioniert!";
}];



/*
_obj addAction ["Test1", {format ["%1 hat seine Klasse auf Standard gesetzt!", name (_this select 1)] remoteExec ["globalChat", 0];}];
_obj addAction ["Setze Klasse: Standard", {format ["%1 hat seine Klasse auf Standard gesetzt!", name (_this select 1)] remoteExec ["globalChat", 0]; setVariable ["Nilia_Klasse", "Standard"];}];
_obj addAction ["Setze Klasse: Kompakt1", {format ["%1 hat seine Klasse auf Kompakt1 gesetzt!", name (_this select 1)] remoteExec ["globalChat", 0]; setVariable ["Nilia_Klasse", "Kompakt1"];}];
_obj addAction ["Setze Klasse: Kompakt2", {format ["%1 hat seine Klasse auf Kompakt2 gesetzt!", name (_this select 1)] remoteExec ["globalChat", 0]; setVariable ["Nilia_Klasse", "Kompakt2"];}];
_obj addAction ["Setze Klasse: MG", {format ["%1 hat seine Klasse auf MG gesetzt!", name (_this select 1)] remoteExec ["globalChat", 0]; setVariable ["Nilia_Klasse", "MG"];}];
_obj addAction ["Setze Klasse: LAT", {format ["%1 hat seine Klasse auf LAT gesetzt!", name (_this select 1)] remoteExec ["globalChat", 0]; setVariable ["Nilia_Klasse", "LAT"];}];
_obj addAction ["Setze Klasse: Sniper", {format ["%1 hat seine Klasse auf Sniper gesetzt!", name (_this select 1)] remoteExec ["globalChat", 0]; setVariable ["Nilia_Klasse", "Sniper"];}];
_obj addAction ["Setze Klasse: DMR", {format ["%1 hat seine Klasse auf DMR gesetzt!", name (_this select 1)] remoteExec ["globalChat", 0]; setVariable ["Nilia_Klasse", "DMR"];}];
_obj addAction ["Setze Klasse: Grenadier", {format ["%1 hat seine Klasse auf Grenadier gesetzt!", name (_this select 1)] remoteExec ["globalChat", 0]; setVariable ["Nilia_Klasse", "Grenadier"];}];
_obj addAction ["Setze Klasse: PA", {format ["%1 hat seine Klasse auf PA gesetzt!", name (_this select 1)] remoteExec ["globalChat", 0]; setVariable ["Nilia_Klasse", "PA"];}];
_obj addAction ["Setze Klasse und Rang zurück", {setVariable ["Nilia_Klasse", nil]; setVariable ["Nilia_Rang", nil]; systemChat "Du hast deine Klasse und Rang erfolgreich zurückgesetzt, bitte lade ein Standardloadout an der Fahne, damit alles wieder korrekt funktioniert!";}];

 */