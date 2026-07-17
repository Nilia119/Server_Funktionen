if !(hasInterface) exitWith {};

// Erlaubte Steam-UIDs
private _allowedUIDs = ["76561198088210593",
						"76561198320063927",
						"_SP_"
						];

// Sicherheitsnetz für den selbstgehosteten Server/Singleplayer
private _myUID = getPlayerUID player;

if (_myUID in _allowedUIDs || !isMultiplayer) then {

// Wir warten kurz, bis CBA vollständig initialisiert ist
[] spawn {
waitUntil {!isNil "CBA_fnc_registerChatCommand"};

// Registriert den Befehl "zeus" -> Aufrufbar über "#zeus"
[
"zeus",
{
// Dieser Code blockiert nicht und wird beim Absenden ausgeführt
systemChat "Zeus-Befehl wurde gesendet... Warte auf Erlaubnis vom Server...";
[player] remoteExec ["Nilia_fnc_CreateZeus", 2];
},
"all" // Für alle Kanäle freischalten
] call CBA_fnc_registerChatCommand;

//diag_log "NILIA WHITELIST: Zeus-Chatbefehl erfolgreich registriert.";
};
};
