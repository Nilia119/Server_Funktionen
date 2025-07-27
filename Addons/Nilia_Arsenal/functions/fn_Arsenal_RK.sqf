//
//	Author: [EuDef]Nilia
//
//	Description:
//		Script zum hinzufügen einer Aktion zum erstellen eines Spielerspezifischen Arsenals
//		ALT: Script zum Erstellen eines Spielerspezifischen Arsenals, basierend auf der aktuellen klasse und den Rang.
//
//	Parameter(s):
//                  0: Name des Objektes auf das das Arsenal angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_Arsenal_RK
//		[this] call Nilia_fnc_Arsenal_RK;
//
//Arsenal stand 27.10.2024

/*
Was muss passieren:
ERLEDIGT: Das Script muss auf einen Objekt eine aktion "Arsenal öffnen" erstellen, wenn ausgewählt, dann:
Script prüft den Spielernamen,
Script prüft den Rang,
Script prüft die "Globale Spieler Klasse",
ERLEDIGT: Script öffnet ein Arsenal <--- Bis hier || Basierend auf den Egebnissen und Standard Items,
Hint "Klasse, Rang, Namesitems" 2 funktion, die Arsenal für KpFhrng spawnt
*/

params ["_object"];

if (isNull _object) exitWith {};

_action = ["Nilia_Player_Arsenal", "Öffne dein Eigenes Arsenal", "", {player call Nilia_fnc_Arsenal_Calculate;}, {true}] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

