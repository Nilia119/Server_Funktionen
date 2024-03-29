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
//		Bool
//
//	Example:
//      [this, "Fleck"] call Nilia_fnc_Zeus;
//		[this] call Nilia_fnc_Zeus  oder:
//
//      Wenn über Init Gecalled:
//      onPreloadFinished {[this, "Fleck"]call Nilia_fnc_Zeus; onPreloadFinished ""};

if (!hasInterface) exitWith {};

params [
["_unit", objNull, [objNull]],
["_farbe", "Tropen"]
];


if (! (local _unit)) exitWith {};

private _future = time + 10;

private _uid = getPlayerUID _unit;

private _WL = [ "76561198088210593",	/* Nilia */
                "76561198320063927",	/* Juggernaut */
                "76561198246422814",    /* Sam */
                "76561198271628215",    /* Stein */
                "76561198832508184",    /* Paul */
                "76561199227218245",    /* Black */
                "76561198244175774",    /* Manuel */
                "76561198007555705",    /* Akahito */
                "76561198238447898",    /* Jinx */
                "76561199034348802",    /* TheOkami */
                "76561198006519428"      /* Olympus */
                ];


if (!(_uid in _WL)) then {
titleText["Dieser Slot benötigt einen Eintrag in eine separate Whitelist. Du bist nicht eingetragen und solltest den Slot wechseln! (Esc -> Abort/Abbrechen)","BLACK",8];
//waitUntil { time >= _future };
endMission "END1";
} else {
    systemChat "Du bist in der Zeus Whitelist!";
};

switch (_farbe) do {
    case "Fleck";
    case "fleck": {[_unit] call Nilia_fnc_Loadout_Fleck_KpFhr; systemChat "Flecktarn Loadout wird geladen...";};
    default {[_unit] call Nilia_fnc_Loadout_Tropen_KpFhr; systemChat "Tropentarn Loadout wird geladen...";};
};

//Destroy Variables

_unit = nil;
_WL = nil;
_uid = nil;
_future = nil;
_farbe = nil;
