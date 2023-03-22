//
//	Author: [9.JgKp]Nilia
//
//	Description:
//		Script zum Hinzufügen einer Whitelist zu einer Einheit. Ausserdem, wird automatisch das Loadout in der jeweilgen Farbe geladen.
//      Das Script soll nicht von Zeus gecalled werden.
//
//	Parameter(s):
//                  0: Name des Objektes auf das das Script angewendet werden soll
//                  1: "Farbe" Des Loadouts, welches verwendet werden soll (wenn nichts angegeben, Tropentarn)
//
//	Returns:
//		Strings
//
//	Example:
//      [this, "Fleck"] call Nilia_fnc_KpFhr;   oder:
//		[this] call Nilia_fnc_KpFhr;    oder:
//
//      Wenn über Init Gecalled:
//      onPreloadFinished {[this, "Fleck"]call Nilia_fnc_KpFhr};
//

if (!hasInterface) exitWith {};

params [
["_unit", objNull, [objNull]],
["_farbe", "Tropen"]
];

_unit = player;

if (! (local _unit)) exitWith {};

private _uid = getPlayerUID _unit;

private _WL = ["76561198088210593", //Nilia
               "76561198320063927"  //Juggernaut
               ];

if (!(_uid in _WL)) then {
titleText["Dieser Slot benötigt einen Eintrag in eine separate Whitelist. Du bist nicht eingetragen und solltest den Slot wechseln! (Esc -> Abort/Abbrechen)","BLACK",8];
endMission "END1";
} else {
systemChat "Du bist in der Kompanieführer Whitelist!";
};

switch (_farbe) do {
case "Fleck";
case "fleck": {[_unit] call Nilia_fnc_Loadout_Fleck_KpFhr; systemChat "Flecktarn Loadout erfolgreich Geladen!";};
default {[_unit] call Nilia_fnc_Loadout_Tropen_KpFhr; systemChat "Tropentarn Loadout erfolgreich Geladen!";};
};

//Destroy Variables

_unit = nil;
_WL = nil;
_uid = nil;
_future = nil;
_farbe = nil;