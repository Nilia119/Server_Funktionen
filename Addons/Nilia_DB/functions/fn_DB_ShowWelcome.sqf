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
//		[] call Nilia_fnc_DB_ShowWelcome;
//		[this] call Nilia_fnc_DB_ShowWelcome;
//
//
params ["_message"];

if (!hasInterface) exitWith {};

[_message] spawn {
	params ["_msg"];
	// Warten bis der Ladebildschirm vorbei ist und der Spieler lebt
	waitUntil { !isNull player && { alive player } };
	sleep 5; // Kurze Pause, damit der Chat nach dem Joinen gut lesbar ist

	systemChat _msg;
};
