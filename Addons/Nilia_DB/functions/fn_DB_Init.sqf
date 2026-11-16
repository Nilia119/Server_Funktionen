//
//	Author: [EuDef]Nilia | AI
//
//	Description:
//		Script zum Hinzufügen und abrufen der Spielerinformationen aus der Datenbank
//
//	Parameter(s):
//
//	Returns:
//		Message
//
//	Example:
//		[] call Nilia_fnc_DB_registerPlayer;
//		[this] call Nilia_fnc_DB_registerPlayer;
//
//
if (!isServer) exitWith {};

// 1. Prüfen, ob die extDB3-DLL geladen ist
if !(("extDB3" callExtension "9:VERSION") isEqualTo "") then {

// 2. Prüfen, ob extDB3 noch nicht gesperrt/initialisiert ist ("[0]" = noch offen)
if (("extDB3" callExtension "9:LOCK_STATUS") isEqualTo "[0]") then {

	// Verbindung zur Datenbank "[Database]" aus der extdb3-conf.ini aufbauen
	private _resDB = "extDB3" callExtension "9:ADD_DATABASE:Database";
	if !(_resDB isEqualTo "[1]") then {
		diag_log format ["[Paul] KRITISCHER FEHLER beim Datenbank-Login: %1", _resDB];
	};

	// SQL-Protokoll "SQL_PROTOCOL" mit TEXT2 (automatische Strings) hinzufügen
	private _resProto = "extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:Database:SQL:SQL_PROTOCOL:TEXT2";
	if !(_resProto isEqualTo "[1]") then {
		diag_log format ["[Paul] KRITISCHER FEHLER beim Laden des Protokolls: %1", _resProto];
	};

	// Setup aus Sicherheitsgründen sperren
	"extDB3" callExtension "9:LOCK";
	diag_log "[Paul] Datenbankverbindung erfolgreich über Nilia_DB initialisiert.";
	} else {
		diag_log "[Paul] extDB3 war bereits initialisiert und gesperrt.";
	};
	} else {
		diag_log "[Paul] Hinweis: extDB3 DLL nicht gefunden (Singleplayer ohne DB-Mod).";
};

// 3. EventHandler für verbindende Spieler im Multiplayer
addMissionEventHandler ["PlayerConnected", {
	params ["_id", "_uid", "_name", "_jip", "_owner", "_idstr"];

	if (_uid != "" && { _owner != 2 }) then {
		[_uid, _name, _owner] call Nilia_fnc_DB_RegisterPlayer;
	};
}];

// 4. Fallback für Singleplayer / Editor-Tests
if (hasInterface) then {
	[] spawn {
		waitUntil { !isNull player && { alive player } };
		[getPlayerUID player, profileName, 2] call Nilia_fnc_DB_RegisterPlayer;
	};
};

