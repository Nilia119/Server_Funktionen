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
//		[] call Nilia_fnc_DB_RegisterPlayer;
//		[this] call Nilia_fnc_DB_RegisterPlayer;
//
//
params ["_uid", "_name", ["_owner", 2]];

if (!isServer) exitWith {};
if (_uid isEqualTo "" || { _uid find "HC" != -1 }) exitWith {};

// Wichtiger Schutz für Singleplayer ohne geladene extDB3-Mod
if (("extDB3" callExtension "9:VERSION") isEqualTo "") exitWith {
		diag_log "[Paul] Warnung: extDB3 nicht geladen.";
	};

// HIER DEN PROTOKOLLNAMEN AUS DEINEM VERBINDUNGS-SKRIPT EINTRAGEN:
private _protocol = "SQL_PROTOCOL";

// Sonderzeichen wie [ ] " . bleiben erhalten! Nur ' und \ werden für MySQL sicher maskiert:
private _sqlSafeName = (_name regexReplace ["\\", "\\\\"]) regexReplace ["'", "''"];

// 1. Prüfen, ob Spieler existiert und gleichzeitig das alte 'Letzter_Login' abrufen
private _checkQuery = format [
		"0:%1:SELECT ID, DATE_FORMAT(Letzter_Login, '%%d.%%m.%%Y %%H:%%i') FROM nc_0p18___EuDef_Nutzer WHERE SteamID = '%2' LIMIT 1",
				_protocol, _uid
];
private _rawResult = "extDB3" callExtension _checkQuery;
private _result = parseSimpleArray _rawResult;

if ((_result select 0) isEqualTo 1) then {
	private _rows = _result select 1;
	private _welcomeMsg = "";

	if (count _rows > 0) then {
		// Bekannter Spieler: Altes Login-Datum auslesen
		private _lastLogin = (_rows select 0) select 1;

		// Name, Letzter_Login UND updated_at mit Datum + Uhrzeit aktualisieren
		private _updateQuery = format [
				"1:%1:UPDATE nc_0p18___EuDef_Nutzer SET Name = '%2', Letzter_Login = NOW(), updated_at = NOW() WHERE SteamID = '%3'",
						_protocol, _sqlSafeName, _uid
		];
		"extDB3" callExtension _updateQuery;

		_welcomeMsg = format [
				"[Paul] Hallo %1, willkommen, dein letzter Login war: am %2.",
						_name, _lastLogin
		];
	} else {
		// Neuer Spieler: Datensatz anlegen inkl. created_at und updated_at mit Datum + Uhrzeit
		private _insertQuery = format [
				"1:%1:INSERT INTO nc_0p18___EuDef_Nutzer (SteamID, Name, Erstellt_von, Letzter_Login, created_at) VALUES ('%2', '%3', 'Server-Paul', NOW(), NOW())",
						_protocol, _uid, _sqlSafeName
		];
		"extDB3" callExtension _insertQuery;

		_welcomeMsg = format [
				"[Paul] Hallo %1, willkommen auf dem Server der EuDef. Deine Informationen %1 | %2 wurden in die Datenbank übertragen!",
						_name, _uid
		];
	};

	// Nachricht an den Spieler senden (wartet beim Client, bis er im Spiel ist)
	[_welcomeMsg] remoteExec ["Nilia_fnc_DB_ShowWelcome", _owner];
		} else {
		diag_log format ["[Paul] Datenbankfehler: %1", _result];
};
