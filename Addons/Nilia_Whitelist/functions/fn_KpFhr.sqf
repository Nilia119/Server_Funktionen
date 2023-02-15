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
//		[this] call Nilia_fnc_KpFhr oder:
//		0 = this spawn {
//      if !(hasInterface) exitWith{};
//      waitUntil {!isNull findDisplay 46};
//      if !(local _this) exitWith{};
//      _this call Nilia_fnc_Zeus;
//      _this call Nilia_fnc_Loadout_Tropen_KpFhr;
//      };
//

if (!hasInterface) exitWith {};

private _unit = player;

if (! (local _unit)) exitWith {};

private _uid = getPlayerUID _unit;

private _WL = ["76561198088210593", //Nilia
               "76561198320063927"  //Juggernaut
               ];

if (!(_uid in _WL)) then {
titleText["Dieser Slot benötigt einen Eintrag in eine separate Whitelist. Du bist nicht eingetragen und solltest den Slot wechseln! (Esc -> Abort/Abbrechen)","BLACK",8];
sleep 8;
endMission "END1";
} else {
systemChat "Du bist in der Kompanieführer Whitelist!";
};