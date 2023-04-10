//
//	Author: [9.JgKp]Nilia
//
//	Description:
//		Script zum setzten von Emblemen anhand des Spielernames
//
//	Parameter(s):
//                  0: Name des Objektes auf die Funktion angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_SetRank
//		[this] call Nilia_fnc_SetRank;
//
//
if (!hasInterface) exitWith {};

private _unit = player;
private _name = name _unit;

//Remove Insignia prior to Adding
[_unit,""] call BIS_fnc_setUnitInsignia;

switch (true) do {
    //Spieler mit eigenen Emblemen
    case ("Nilia" in _name): {[_unit,"9JgKp_Insignia_Nilia"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Nilia!";};
    case ("Juggernaut" in _name): {[_unit,"9JgKp_Insignia_Juggernaut"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Juggernaut!";};
    case ("Fox" in _name): {[_unit,"9JgKp_Insignia_Fox"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Fox!";};
    case ("EwL" in _name): {[_unit,"9JgKp_Insignia_Ewl"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Ewl | Jesus!";};
    case ("Plutokratie" in _name): {[_unit,"9JgKp_Insignia_Plutokratie"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Plutokratie!";};
    case ("Stiffler" in _name): {[_unit,"9JgKp_Insignia_Stiffler"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Stiffler!";};
    case ("Toyo" in _name): {[_unit,"9JgKp_Insignia_Toyo"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Toyo!";};
    case ("Farid" in _name): {[_unit,"9JgKp_Insignia_Farid_Khaleel"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Farid!";};
    case ("ImTheKessel" in _name): {[_unit,"9JgKp_Insignia_ImTheKessel"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Kessel!";};
    case ("Haasm" in _name): {[_unit,"9JgKp_Insignia_Haasm"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Haasm!";};
    case ("Hotshrek" in _name): {[_unit,"9JgKp_Insignia_Hotshrek"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Hotshrek!";};
    case ("Itzz-_-Pat" in _name): {[_unit,"9JgKp_Insignia_ItzzPat"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Itzz-_-Pat ;D!";};
    case ("Manuel" in _name): {[_unit,"9JgKp_Insignia_Manuel"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Manuel!";};
    case ("Sam King" in _name): {[_unit,"9JgKp_Insignia_SamKing"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Sam!";};
    case ("Tom" in _name): {[_unit,"9JgKp_Insignia_Tom"] call BIS_fnc_setUnitInsignia; systemChat "Hey, Tom!";};
    //Jäger
    case ("Jg." in _name): {[_unit,"9JgKp_Insignia_Jaeger"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Jäger!";};
    //Gefreite
    case ("OStGefr." in _name): {[_unit,"9JgKp_Insignia_Oberstabsgefreiter"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Oberstabsgefreiter!";};
    case ("StGefr." in _name): {[_unit,"9JgKp_Insignia_Stabsgefreiter"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Stabsgefreiter!";};
    case ("HptGefr." in _name): {[_unit,"9JgKp_Insignia_Hauptgefreiter"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Hauptgefreiter!";};
    case ("OGefr." in _name): {[_unit,"9JgKp_Insignia_Obergefreiter"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Obergefreiter!";};
    case ("Gefr." in _name): {[_unit,"9JgKp_Insignia_Gefreiter"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Gefreiter!";};
    //Korporale
    case ("StKorp." in _name): {[_unit,"9JgKp_Insignia_Stabskorporal"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Stabskorporal!";};
    case ("Korp." in _name): {[_unit,"9JgKp_Insignia_Korporal"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Korporal!";};
    //Unteroffiziere o PP.
    case ("StUffz." in _name): {[_unit,"9JgKp_Insignia_Stabsunteroffizier"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Stabsunteroffizier!";};
    case ("Uffz." in _name): {[_unit,"9JgKp_Insignia_Unteroffizier"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Unteroffizier!";};
    //Unteroffiziere m PP.
    case ("Fhj." in _name): {[_unit,"9JgKp_Insignia_Fahnenjunker"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Fahnenjunker!";};
    case ("OStFw." in _name): {[_unit,"9JgKp_Insignia_Oberstabsfeldwebel"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Oberstabsfeldwebel!";};
    case ("StFw." in _name): {[_unit,"9JgKp_Insignia_Stabsfeldwebel"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Stabsfeldwebel!";};
    case ("HptFw." in _name): {[_unit,"9JgKp_Insignia_Hauptfeldwebel"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Hauptfeldwebel!";};
    case ("OFw." in _name): {[_unit,"9JgKp_Insignia_Oberfeldwebel"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Oberfeldwebel!";};
    case ("Fw." in _name): {[_unit,"9JgKp_Insignia_Feldwebel"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Feldwebel!";};
    //Offiziere ->Leutnante
    case ("OFähnr." in _name): {[_unit,"9JgKp_Insignia_Oberfaehnrich"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Oberfähnrich!";};
    case ("Fähnr." in _name): {[_unit,"9JgKp_Insignia_Faehnrich"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Fähnrich!";};
    case ("OLt." in _name): {[_unit,"9JgKp_Insignia_Oberleutnant"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Oberleutnant!";};
    //Hauptleute
    case ("StHptm." in _name): {[_unit,"9JgKp_Insignia_Stabshauptmann"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Stabshauptmann!";};
    case ("Hptm." in _name): {[_unit,"9JgKp_Insignia_Hauptmann"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Hauptmann!";};
    //Stabsoffiziere
    case ("OberstLt." in _name): {[_unit,"9JgKp_Insignia_Oberstleutnant"] call BIS_fnc_setUnitInsignia; systemChat "Du bist OberstLeutnant!";};
    case ("Oberst" in _name): {[_unit,"9JgKp_Insignia_Oberst"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Oberst!";};
    //Generale
    case ("BrigGen." in _name): {[_unit,"9JgKp_Insignia_Brigadegeneral"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Brigadegeneral!";};
    case ("GenMaj." in _name): {[_unit,"9JgKp_Insignia_Generalmajor"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Generalmajor!";};
    case ("GenLt." in _name): {[_unit,"9JgKp_Insignia_Generalleutnant"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Generalleutnant!";};
    case ("Gen." in _name): {[_unit,"9JgKp_Insignia_General"] call BIS_fnc_setUnitInsignia; systemChat "Du bist General!";};
    //Alle anderen
    case ("Lt." in _name): {[_unit,"9JgKp_Insignia_Leutnant"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Leutnant!";};
    case ("Maj." in _name): {[_unit,"9JgKp_Insignia_Major"] call BIS_fnc_setUnitInsignia; systemChat "Du bist Major!";};
    default {[_unit,"9JgKp_Insignia_Logo"] call BIS_fnc_setUnitInsignia; systemChat "Dein Name enthält leider keinen Rangkürzel oder du bist nicht gelistet.";};
};