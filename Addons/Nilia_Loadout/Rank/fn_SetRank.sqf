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
//[_unit,""] call BIS_fnc_setUnitInsignia;
[_unit, ""] remoteExec ["bis_fnc_setUnitInsignia", 0];

switch (true) do {
    //Spieler mit eigenen Emblemen
    case ("Nilia" in _name): {[_unit,"9JgKp_Insignia_Nilia"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Nilia!";};
    case ("Juggernaut" in _name): {[_unit,"9JgKp_Insignia_Juggernaut"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Juggernaut!";};
    case ("Fox" in _name): {[_unit,"9JgKp_Insignia_Fox"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Fox!";};
    case ("CrasyConsti" in _name): {[_unit,"9JgKp_Insignia_CrasyConsti"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, CrasyConsti!";};
    case ("Plutokratie" in _name): {[_unit,"9JgKp_Insignia_Plutokratie"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Plutokratie!";};
    case ("Paul" in _name): {[_unit,"9JgKp_Insignia_Paul"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Paul!";};
    case ("Toyo" in _name): {[_unit,"9JgKp_Insignia_Toyo"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Toyo!";};
    case ("Farid" in _name): {[_unit,"9JgKp_Insignia_Farid_Khaleel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Farid!";};
    case ("Hotshrek" in _name): {[_unit,"9JgKp_Insignia_Hotshrek"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Hotshrek!";};
    case ("Manuel" in _name): {[_unit,"9JgKp_Insignia_Manuel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Manuel!";};
    case ("Sam King" in _name): {[_unit,"9JgKp_Insignia_SamKing"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Sam!";};
    case ("Tom" in _name): {[_unit,"9JgKp_Insignia_Tom"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Tom!";};
    //Jäger
    case ("Jg." in _name): {[_unit,"9JgKp_Insignia_Jaeger"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Jäger!";};
    //Gefreite
    case ("OStGefr." in _name): {[_unit,"9JgKp_Insignia_Oberstabsgefreiter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberstabsgefreiter!";};
    case ("StGefr." in _name): {[_unit,"9JgKp_Insignia_Stabsgefreiter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Stabsgefreiter!";};
    case ("HptGefr." in _name): {[_unit,"9JgKp_Insignia_Hauptgefreiter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Hauptgefreiter!";};
    case ("OGefr." in _name): {[_unit,"9JgKp_Insignia_Obergefreiter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Obergefreiter!";};
    case ("Gefr." in _name): {[_unit,"9JgKp_Insignia_Gefreiter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Gefreiter!";};
    //Korporale
    case ("StKorp." in _name): {[_unit,"9JgKp_Insignia_Stabskorporal"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Stabskorporal!";};
    case ("Korp." in _name): {[_unit,"9JgKp_Insignia_Korporal"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Korporal!";};
    //Unteroffiziere o PP.
    case ("StUffz." in _name): {[_unit,"9JgKp_Insignia_Stabsunteroffizier"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Stabsunteroffizier!";};
    case ("Uffz." in _name): {[_unit,"9JgKp_Insignia_Unteroffizier"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Unteroffizier!";};
    //Unteroffiziere m PP.
    case ("Fhj." in _name): {[_unit,"9JgKp_Insignia_Fahnenjunker"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Fahnenjunker!";};
    case ("OStFw." in _name): {[_unit,"9JgKp_Insignia_Oberstabsfeldwebel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberstabsfeldwebel!";};
    case ("StFw." in _name): {[_unit,"9JgKp_Insignia_Stabsfeldwebel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Stabsfeldwebel!";};
    case ("HptFw." in _name): {[_unit,"9JgKp_Insignia_Hauptfeldwebel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Hauptfeldwebel!";};
    case ("OFw." in _name): {[_unit,"9JgKp_Insignia_Oberfeldwebel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberfeldwebel!";};
    case ("Fw." in _name): {[_unit,"9JgKp_Insignia_Feldwebel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Feldwebel!";};
    //Offiziere ->Leutnante
    case ("OFähnr." in _name): {[_unit,"9JgKp_Insignia_Oberfaehnrich"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberfähnrich!";};
    case ("Fähnr." in _name): {[_unit,"9JgKp_Insignia_Faehnrich"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Fähnrich!";};
    case ("OLt." in _name): {[_unit,"9JgKp_Insignia_Oberleutnant"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberleutnant!";};
    //Hauptleute
    case ("StHptm." in _name): {[_unit,"9JgKp_Insignia_Stabshauptmann"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Stabshauptmann!";};
    case ("Hptm." in _name): {[_unit,"9JgKp_Insignia_Hauptmann"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Hauptmann!";};
    //Stabsoffiziere
    case ("OberstLt." in _name): {[_unit,"9JgKp_Insignia_Oberstleutnant"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist OberstLeutnant!";};
    case ("Oberst" in _name): {[_unit,"9JgKp_Insignia_Oberst"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberst!";};
    //Generale
    case ("BrigGen." in _name): {[_unit,"9JgKp_Insignia_Brigadegeneral"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Brigadegeneral!";};
    case ("GenMaj." in _name): {[_unit,"9JgKp_Insignia_Generalmajor"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Generalmajor!";};
    case ("GenLt." in _name): {[_unit,"9JgKp_Insignia_Generalleutnant"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Generalleutnant!";};
    case ("Gen." in _name): {[_unit,"9JgKp_Insignia_General"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist General!";};
    //Alle anderen
    case ("Lt." in _name): {[_unit,"9JgKp_Insignia_Leutnant"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Leutnant!";};
    case ("Maj." in _name): {[_unit,"9JgKp_Insignia_Major"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Major!";};
    default {[_unit,"9JgKp_Insignia_Logo"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Dein Name enthält leider keinen Rangkürzel oder du bist nicht gelistet.";};
};