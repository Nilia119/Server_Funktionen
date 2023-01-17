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
//		onPreloadstarted '[this] call Nilia_fnc_KpFhr'; //Wenn Loadouts gecalled werden!
//

if (!isServer) exitWith {};

private _uid = getPlayerUID player;

private _WL = ["76561198088210593" //Nilia
               //"76561198320063927"  //Juggernaut
               ];

if (!(_uid in _WL)) then {
titleText["Dieser Slot benötigt einen Eintrag in eine separate Whitelist. Du bist nicht eingetragen und solltest den Slot wechseln! (Esc -> Abort/Abbrechen)","BLACK",8];
endMission "END1";
} else {
systemChat "Du bist in der Kompanieführer Whitelist!";
};