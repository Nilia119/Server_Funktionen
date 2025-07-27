//
//	Author: [EuDef]Nilia
//
//	Description:
//		Script zum Erstellen eines Spielerspezifischen Arsenals, basierend auf der aktuellen klasse und den Rang.
//
//	Parameter(s):
//                  0: Name des Objektes auf das das Arsenal angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Calculate
//		[this] call Nilia_fnc_Arsenal;
//
//Arsenal stand 27.10.2024

/*
Was muss passieren:
ERLEDIGT: Das Script muss auf einen Objekt eine aktion "Arsenal öffnen" erstellen, wenn ausgewählt, dann:
Script prüft den Spielernamen,
Script prüft den Rang,
Script prüft die "Globale Spieler Klasse",
Script ersetzt die Ergebnisse durch Items,
Script öffnet ein Arsenal Basierend auf den Egebnissen und Standard Items,
Hint "Klasse, Rang, Namesitems"
 Funktion "Admin" die allen Klassen >10 alle Items gibt z.B. eine Whitelist
*/

//if (!hasInterface) exitWith {};

params [["_object", objNull, [objNull]]];

//Deklariere Variabeln
private _unit = player;
private _klasse = Nilia_Klasse; // Obsolet??

//Deklariere Globale Variabeln
_unit setVariable ["Nilia_SpielerItems", ["itemMap"]];
_unit setVariable ["Nilia_RangKlassenItems", ["itemMap"]];
_unit setVariable ["Nilia_AllgemeineItems", ["itemMap"]];

//Erstelle die Ausrüstung

[_unit] call Nilia_fnc_Arsenal_Playeritems;
[_unit] call Nilia_fnc_Arsenal_RangundKlasse;
[_unit] call Nilia_fnc_Arsenal_Basis_Compiled;

/*
private _playerItems = [_unit] call Nilia_fnc_Arsenal_Playeritems;
private _RangKlassenItems = [_unit] call Nilia_fnc_Arsenal_RangundKlasse;
private _AllgemeineItems = call Nilia_fnc_Arsenal_Basis_Compiled;
private _Admin;
*/
/*
private _ArsenalInhalt = [
        [_unit] call Nilia_fnc_Arsenal_Playeritems,
        [_unit] call Nilia_fnc_Arsenal_RangundKlasse,
        call Nilia_fnc_Arsenal_Basis_Compiled
];
*/

private _inhalt = (_unit getVariable ["Nilia_SpielerItems", []]) + (_unit getVariable ["Nilia_RangKlassenItems", []]) + (_unit getVariable ["Nilia_AllgemeineItems", []]) + ["itemWatch"];

//Entferne alle Items aus "Arsenal"

[_unit, true] call ace_arsenal_fnc_removeVirtualItems; // Noch nicht getestet, ob wirklich funktioniert, wechsel der Klassen xD

//Füge Spezifische Items ins Arsenal hinzu

[_unit, _inhalt] call ace_arsenal_fnc_addVirtualItems;

//Öffne Arsenal auf Spieler

[_unit, _unit] call ace_arsenal_fnc_openBox;

//Debug Information!
systemChat "Arsenal wurde geöffnet und neu berechnet!";

//systemChat format ["ArsenalInhalt: %1", _ArsenalInhalt];
//systemChat format ["Anzahl: %1 | Inhalt: %2", count _inhalt, _inhalt]; // DEBUG INFO FUNKTIONIERT!

//Leere Variabel

_klasse = nil;
_playerItems = nil;
_RangKlassenItems = nil;
_AllgemeineItems = nil;
_inhalt = nil;