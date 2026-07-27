params ["_unit"];

private _masterUID = "76561198088210593";
	if (getPlayerUID _unit != _masterUID) exitWith {
		diag_log format ["WARNUNG: Spieler %1 (%2) hat versucht den Force-Logout Befehl zu verwenden!", name _unit, getPlayerUID _unit];
	};

diag_log "Admin Force-Logout wird durchgeführt...";

// 2. JEDEN Spieler auf dem Server anweisen, seinen Admin-Status lokal zu prüfen und zu beenden
// Das Ziel "0" schickt den Befehl an alle Clients im Netzwerk
[[], {

// Dieser Code läuft nun zeitgleich auf den PCs ALLER Spieler im Hintergrund:
[] spawn {

	// Prüft über die Engine, ob der jeweilige PC aktuell als Admin angemeldet ist
	if (serverCommandAvailable "#logout") then {

		// Der Spieler wird im globalen Chat gewarnt
			systemChat "Du wurdest ausgeloggt!";

		// Das Spiel benötigt ein aktives UI-Element, um den Befehl abzusetzen.
		// Wir erstellen für eine Millisekunde ein unsichtbares Log-Fenster, um die Engine auszutricksen
		private _dummyDisplay = findDisplay 46;
		if (!isNull _dummyDisplay) then {

			// Der Spieler loggt sich unfreiwillig selbst aus!
			serverCommand "#logout";

			// Sicherheitshalber schließen wir auch direkt sein Zeus-Interface, falls er eins offen hatte
			if (!isNull (findDisplay 160)) then {
			(findDisplay 160) closeDisplay 2;
				};
			};
		};
	};

}] remoteExec ["spawn", 0, false];

// Bestätigung
[[name _unit], {
	systemChat "Admins erfolgreich ausgeloggt.";
}] remoteExec ["spawn", _unit];