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
//		[] call Nilia_fnc_KpFhr
//		[this] call Nilia_fnc_KpFhr;
//

//Was soll passieren:
//Funktion nur wenn Server                                  DONE
//Funktion soll laufen, wenn Slot von Spieler besetzt       DONE
//Funktion soll SteamID des Spielers abfragen               DONE
//Funktion soll ID des Spielers mit Whitelist verglecihen   DONE
//Spieler soll in der Lobby landen, wenn falsche ID         DONE

if (!isServer) exitWith {};

waitUntil { not isNull player };

private _uid = getPlayerUID player;

private _WL = ["76561198088210593", //Nilia 93
               "76561198068007745"  //Weekend
               ];

if (!(_uid in _WL)) then {
    sleep 5;
    titleText["Dieser Slot benötigt einen Eintrag in eine separate Whitelist. Du bist nicht eingetragen und solltest den Slot wechseln! (Esc -> Abort/Abbrechen)","BLACK",8];
    endMission "END1";
}; else {exitWith {};};

/*

if (!isServer) exitWith { hint "Kein Server!" };



params ["_unit"];

private _WL =[
"76561198088210593",
"76561198068007745"     //Weekend
];

if (! (local _unit)) exitWith {};

if(!((getPlayerUID player) in _WL)) then {
titleText["Dieser Slot benötigt einen Eintrag in eine separate Whitelist. Du bist nicht eingetragen und solltest den Slot wechseln! (Esc -> Abort/Abbrechen)","BLACK",8];
sleep 10;
//waitUntil { alive player };
//sleep 5;
endmission "END1";
};

 */