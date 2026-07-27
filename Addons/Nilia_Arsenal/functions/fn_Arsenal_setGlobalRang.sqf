//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script converts Rank of Player to Global int.
//
//
//	Parameter(s):
//                  0: Name des zu Prüfenden Spielers
//
//	Returns:
//		Int
//
//	Example:
//		[] call Nilia_fnc_Arsenal_setGlobalRang
//		[player] call Nilia_fnc_Arsenal_setGlobalRang

params [["_unit", objNull, [objNull]]];
private _unit = player;
private _name = name _unit;
private _rangnr = 0;

switch (true) do {
// Sonderfälle aka Pluto ^^
//case ("Plutokratie" in _name): {systemChat "Hi Pluto!"; _rangnr = 7;};  //SteamID: 76561198242677538
//case ("Benedikt" in _name): {systemChat "Hi Benedikt!"; _rangnr = 5;};  //SteamID: MISSING
case ("DieScholle" in _name): {systemChat "Hi Scholle!"; _rangnr = 6;};
// Jäger
case ("Jg." in _name): {systemChat "Du bist Jäger!"; _rangnr = 0;};
//Gefreite
case ("OStGefr." in _name): {systemChat "Du bist Oberstabsgefreiter!"; _rangnr = 5;};
case ("StGefr." in _name): {systemChat "Du bist Stabsgefreiter!"; _rangnr = 4;};
case ("HptGefr." in _name): {systemChat "Du bist Hauptgefreiter!"; _rangnr = 3;};
case ("OGefr." in _name): {systemChat "Du bist Obergefreiter!"; _rangnr = 2;};
case ("Gefr." in _name): {systemChat "Du bist Gefreiter!"; _rangnr = 1;};
//Korporale
case ("StKorp." in _name): {systemChat "Du bist Stabskorporal!"; _rangnr = 7;};
case ("Korp." in _name): {systemChat "Du bist Korporal!"; _rangnr = 6;};
//Unteroffiziere o PP.
case ("StUffz." in _name): {systemChat "Du bist Stabsunteroffizier!"; _rangnr = 7;};
case ("Uffz." in _name): {systemChat "Du bist Unteroffizier!"; _rangnr = 6;};
//Unteroffiziere m PP.
case ("Fhj." in _name): {systemChat "Du bist Fahnenjunker!"; _rangnr = 3;};
case ("OStFw." in _name): {systemChat "Du bist Oberstabsfeldwebel!"; _rangnr = 7;};
case ("StFw." in _name): {systemChat "Du bist Stabsfeldwebel!"; _rangnr = 6;};
case ("HptFw." in _name): {systemChat "Du bist Hauptfeldwebel!"; _rangnr = 5;};
case ("OFw." in _name): {systemChat "Du bist Oberfeldwebel!"; _rangnr = 4;};
case ("Fw." in _name): {systemChat "Du bist Feldwebel!"; _rangnr = 3;};
//Warrant Officer
case ("WO1" in _name): {systemChat "Du bist Warrant Officer 1!"; _rangnr = 3;};
case ("CW2" in _name): {systemChat "Du bist Chief Warrant Officer 2!"; _rangnr = 4;};
case ("CW3" in _name): {systemChat "Du bist Chief Warrant Officer 3!"; _rangnr = 5;};
case ("CW4" in _name): {systemChat "Du bist Chief Warrant Officer 4!"; _rangnr = 6;};
case ("CW5" in _name): {systemChat "Du bist Chief Warrant Officer 5!"; _rangnr = 7;};
//Offiziere ->Leutnante
case ("OFähnr." in _name): {systemChat "Du bist Oberfähnrich!"; _rangnr = 5;};
case ("Fähnr." in _name): {systemChat "Du bist Fähnrich!"; _rangnr = 3;};
case ("OLt." in _name): {systemChat "Du bist Oberleutnant!"; _rangnr = 11;};
//Hauptleute
case ("StHptm." in _name): {systemChat "Du bist Stabshauptmann!"; _rangnr = 13;};
case ("Hptm." in _name): {systemChat "Du bist Hauptmann!"; _rangnr = 12;};
//Stabsoffiziere
case ("OberstLt." in _name): {systemChat "Du bist Oberstleutnant!"; _rangnr = 15;};
case ("Oberst" in _name): {systemChat "Du bist Oberst!"; _rangnr = 16;};
//Generale
case ("BrigGen." in _name): {systemChat "Du bist Brigadegeneral!"; _rangnr = 17;};
case ("GenMaj." in _name): {systemChat "Du bist Generalmajor!"; _rangnr = 18;};
case ("GenLt." in _name): {systemChat "Du bist Generalleutnant!"; _rangnr = 19;};
case ("Gen." in _name): {systemChat "Du bist General!"; _rangnr = 20;};
//Alle anderen
case ("Lt." in _name): {systemChat "Du bist Leutnant!"; _rangnr = 10;};
case ("Maj." in _name): {systemChat "Du bist Major!"; _rangnr = 14;};
default {_rangnr = 0; systemChat "Dein Name enthält leider kein Rangkürzel oder es konnte nicht erkannt werden.";};
};

/* Variable korrekt setzen und abrufen
_name setVariable ["Nilia_Rang", _rangnr];
systemChat format ["Deine Nummer: %1", _unit getVariable "Nilia_Rang"];
*/

_unit setVariable ["Nilia_Rang", _rangnr];
systemChat format ["Deine Nummer: %1", _rangnr];