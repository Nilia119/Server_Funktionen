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
    case ("Nilia" in _name): {[_unit,"EuDef_Insignia_Nilia"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Nilia!";};
    case ("Juggernaut" in _name): {[_unit,"EuDef_Insignia_Juggernaut"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Juggernaut!";};
    case ("Fox" in _name): {[_unit,"EuDef_Insignia_Fox"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Fox!";};
    case ("CrasyConsti" in _name): {[_unit,"EuDef_Insignia_CrasyConsti"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, CrasyConsti!";};
    case ("Plutokratie" in _name): {[_unit,"EuDef_Insignia_Plutokratie"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Plutokratie!";};
    case ("Paul" in _name): {[_unit,"EuDef_Insignia_Paul"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Paul!";};
    case ("Toyo" in _name): {[_unit,"EuDef_Insignia_Toyo"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Toyo!";};
    case ("Farid" in _name): {[_unit,"EuDef_Insignia_Farid_Khaleel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Farid!";};
    case ("Manuel" in _name): {[_unit,"EuDef_Insignia_Manuel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Manuel!";};
    case ("Sam King" in _name): {[_unit,"EuDef_Insignia_SamKing"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Sam!";};
    case ("Akahito" in _name): {[_unit,"EuDef_Insignia_Akahito"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Akahito!";};
    case ("Benedikt" in _name): {[_unit,"EuDef_Insignia_Benedikt"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Benedikt!";};
    case ("Cutter" in _name): {[_unit,"EuDef_Insignia_Cutter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Cutter!";};
    case ("Waschie" in _name): {[_unit,"EuDef_Insignia_Waschie"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Waschie!";};
    case ("Dompi" in _name): {[_unit,"EuDef_Insignia_Dompi"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Dompi!";};
    case ("Ernschmosh" in _name): {[_unit,"EuDef_Insignia_Ernstmosh"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Ernstmosh!";};
    case ("Floaty" in _name): {[_unit,"EuDef_Insignia_Floaty"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Floaty!";};
    case ("Frosch" in _name): {[_unit,"EuDef_Insignia_Frosch"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Frosch!";};
    case ("Grurai" in _name): {[_unit,"EuDef_Insignia_Grurai"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Grurai!";};
    case ("Gurke" in _name): {[_unit,"EuDef_Insignia_Gurke"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Gurke!";};
    case ("Karma" in _name): {[_unit,"EuDef_Insignia_Karma"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Karma!";};
    case ("Luna" in _name): {[_unit,"EuDef_Insignia_Luna"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Luna!";};
    case ("Miep" in _name): {[_unit,"EuDef_Insignia_Miep"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Miep!";};
    case ("Olympus" in _name): {[_unit,"EuDef_Insignia_Olympus"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Olympus!";};
    case ("Ratte" in _name): {[_unit,"EuDef_Insignia_Ratte"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Ratte!";};
    case ("Rock" in _name): {[_unit,"EuDef_Insignia_Rock"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Rock!";};
    case ("Sero" in _name): {[_unit,"EuDef_Insignia_Sero"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Sero!";};
    case ("Okami" in _name): {[_unit,"EuDef_Insignia_Okami"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Hey, Okami! :D";};
    //Jäger
    case ("Jg." in _name): {[_unit,"EuDef_Insignia_Jaeger"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Soldat!";};
    //Gefreite
    case ("OStGefr." in _name): {[_unit,"EuDef_Insignia_Oberstabsgefreiter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberstabsgefreiter!";};
    case ("StGefr." in _name): {[_unit,"EuDef_Insignia_Stabsgefreiter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Stabsgefreiter!";};
    case ("HptGefr." in _name): {[_unit,"EuDef_Insignia_Hauptgefreiter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Hauptgefreiter!";};
    case ("OGefr." in _name): {[_unit,"EuDef_Insignia_Obergefreiter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Obergefreiter!";};
    case ("Gefr." in _name): {[_unit,"EuDef_Insignia_Gefreiter"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Gefreiter!";};
    //Korporale
    case ("StKorp." in _name): {[_unit,"EuDef_Insignia_Stabskorporal"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Stabskorporal!";};
    case ("Korp." in _name): {[_unit,"EuDef_Insignia_Korporal"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Korporal!";};
    //Unteroffiziere o PP.
    case ("StUffz." in _name): {[_unit,"EuDef_Insignia_Stabsunteroffizier"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Stabsunteroffizier!";};
    case ("Uffz." in _name): {[_unit,"EuDef_Insignia_Unteroffizier"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Unteroffizier!";};
    //Unteroffiziere m PP.
    case ("Fhj." in _name): {[_unit,"EuDef_Insignia_Fahnenjunker"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Fahnenjunker!";};
    case ("OStFw." in _name): {[_unit,"EuDef_Insignia_Oberstabsfeldwebel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberstabsfeldwebel!";};
    case ("StFw." in _name): {[_unit,"EuDef_Insignia_Stabsfeldwebel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Stabsfeldwebel!";};
    case ("HptFw." in _name): {[_unit,"EuDef_Insignia_Hauptfeldwebel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Hauptfeldwebel!";};
    case ("OFw." in _name): {[_unit,"EuDef_Insignia_Oberfeldwebel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberfeldwebel!";};
    case ("Fw." in _name): {[_unit,"EuDef_Insignia_Feldwebel"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Feldwebel!";};
    //Offiziere ->Leutnante
    case ("OFähnr." in _name): {[_unit,"EuDef_Insignia_Oberfaehnrich"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberfähnrich!";};
    case ("Fähnr." in _name): {[_unit,"EuDef_Insignia_Faehnrich"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Fähnrich!";};
    case ("OLt." in _name): {[_unit,"EuDef_Insignia_Oberleutnant"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberleutnant!";};
    //Hauptleute
    case ("StHptm." in _name): {[_unit,"EuDef_Insignia_Stabshauptmann"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Stabshauptmann!";};
    case ("Hptm." in _name): {[_unit,"EuDef_Insignia_Hauptmann"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Hauptmann!";};
    //Stabsoffiziere
    case ("OberstLt." in _name): {[_unit,"EuDef_Insignia_Oberstleutnant"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist OberstLeutnant!";};
    case ("Oberst" in _name): {[_unit,"EuDef_Insignia_Oberst"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Oberst!";};
    //Generale
    case ("BrigGen." in _name): {[_unit,"EuDef_Insignia_Brigadegeneral"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Brigadegeneral!";};
    case ("GenMaj." in _name): {[_unit,"EuDef_Insignia_Generalmajor"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Generalmajor!";};
    case ("GenLt." in _name): {[_unit,"EuDef_Insignia_Generalleutnant"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Generalleutnant!";};
    case ("Gen." in _name): {[_unit,"EuDef_Insignia_General"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist General!";};
    //Alle anderen
    case ("Lt." in _name): {[_unit,"EuDef_Insignia_Leutnant"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Leutnant!";};
    case ("Maj." in _name): {[_unit,"EuDef_Insignia_Major"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Du bist Major!";};
    default {[_unit,"EuDef_Insignia_Logo"] remoteExec ["bis_fnc_setUnitInsignia", 0, true]; systemChat "Dein Name enthält leider keinen Rangkürzel oder du bist nicht gelistet.";};
};