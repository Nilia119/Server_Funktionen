//
//	Author: [9.JgKp]Nilia
//
//	Description:
//		Script zum Hinzufügen einer Whitelist zur Einheit
//      Das Script soll nicht von Zeus gecalled werden.
//
//	Parameter(s):
//                  0: Name des Objektes auf das das Script angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_Zeus
//		[this] call Nilia_fnc_Zeus;
//

if (!isServer) exitWith {};

waitUntil { not isNull player };

private _uid = getPlayerUID player;

private _WL = ["76561198088210593",	    /* Nilia */
                "76561198320063927",	/* Juggernaut */
                "76561198329749528",	/* Itzz-_-Pat */
                "76561198095074814",	/* EwL */
                "76561198246422814",    /* Sam */
                "76561198982732768",    /* Mr.Blue */
                "76561198127746392"	    /* Kessel */
];

if (!(_uid in _WL)) then {
sleep 5;
titleText["Dieser Slot benötigt einen Eintrag in eine separate Whitelist. Du bist nicht eingetragen und solltest den Slot wechseln! (Esc -> Abort/Abbrechen)","BLACK",8];
endMission "END1";
}; else {exitWith {};};