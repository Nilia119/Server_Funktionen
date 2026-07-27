//
//	Author: [EuDef]Nilia
//
//	Description:
//		Script zum setzten von ETR Rängen (ACE Rangsymbole) anhand des Spielernames
//
//	Parameter(s):
//                  0: Name des Objektes auf die Funktion angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_SetETR
//		[this] call Nilia_fnc_SetETR;
//
//
// TAL: ETR: https://github.com/tacticalrealism/etr_ranks/wiki/UID-System
if (!hasInterface) exitWith {};

private _unit = player;
private _name = name _unit;

switch (true) do {
    //Jäger
    case ("Jg." in _name): {[_unit, ["germany", "or1_soldat"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Soldat!";};
    //Gefreite
    case ("OStGefr." in _name): {[_unit, ["germany", "or4b_oberstabsgefreiter"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Oberstabsgefreiter!";};
    case ("StGefr." in _name): {[_unit, ["germany", "or4a_stabsgefreiter"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Stabsgefreiter!";};
    case ("HptGefr." in _name): {[_unit, ["germany", "or3b_hauptgefreiter"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Hauptgefreiter!";};
    case ("OGefr." in _name): {[_unit, ["germany", "or3a_obergefreiter"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Obergefreiter!";};
    case ("Gefr." in _name): {[_unit, ["germany", "or2_gefreiter"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Gefreiter!";};
    //Korporale
    case ("StKorp." in _name): {[_unit, ["germany", "or4d_stabskorporal"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Stabskorporal!";};
    case ("Korp." in _name): {[_unit, ["germany", "or4c_korporal"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Korporal!";};
    //Unteroffiziere o PP.
    case ("StUffz." in _name): {[_unit, ["germany", "or5b_stabsunteroffizier"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Stabsunteroffizier!";};
    case ("Uffz." in _name): {[_unit, ["germany", "or5a_unteroffizier"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Unteroffizier!";};
    //Unteroffiziere m PP.
    case ("Fhj." in _name): {[_unit, ["germany", "or5a_unteroffizier"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Fahnenjunker!";};
    case ("OStFw." in _name): {[_unit, ["germany", "or9_oberstabsfeldwebel"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Oberstabsfeldwebel!";};
    case ("StFw." in _name): {[_unit, ["germany", "or8_stabsfeldwebel"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Stabsfeldwebel!";};
    case ("HptFw." in _name): {[_unit, ["germany", "or7_hauptfeldwebel"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Hauptfeldwebel!";};
    case ("OFw." in _name): {[_unit, ["germany", "or6b_oberfeldwebel"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Oberfeldwebel!";};
    case ("Fw." in _name): {[_unit, ["germany", "or6a_feldwebel"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Feldwebel!";};
    //Warrant Officer
    case ("WO1" in _name): {[_unit, ["us_army", "w1_warrant_officer_1"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Warrant Officier 1!";};
    case ("CW2" in _name): {[_unit, ["us_army", "w2_warrant_officer_2"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Chief Warrant Officer 2!";};
    case ("CW3" in _name): {[_unit, ["us_army", "w3_warrant_officer_3"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Chief Warrant Officer 3!";};
    case ("CW4" in _name): {[_unit, ["us_army", "w4_warrant_officer_4"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Chief Warrant Officer 4!";};
    case ("CW5" in _name): {[_unit, ["us_army", "w5_warrant_officer_5"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Chief Warrant Officer 5!";};
    //Offiziere ->Leutnante
    case ("OFähnr." in _name): {[_unit, ["germany", "or7_hauptfeldwebel"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Oberfähnrich!";};
    case ("Fähnr." in _name): {[_unit, ["germany", "or6a_feldwebel"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Fähnrich!";};
    case ("OLt." in _name): {[_unit, ["germany", "of1b_oberleutnant "]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Oberleutnant!";};
    //Hauptleute
    case ("StHptm." in _name): {[_unit, ["germany", "of2b_stabshauptmann"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Stabshauptmann!";};
    case ("Hptm." in _name): {[_unit, ["germany", "of2a_hauptmann"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Hauptmann!";};
    //Stabsoffiziere
    case ("OberstLt." in _name): {[_unit, ["germany", "of4_oberstleunant"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Oberstleutnant!";};
    case ("Oberst" in _name): {[_unit, ["germany", "of5_oberst"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Oberst!";};
    //Generale
    case ("BrigGen." in _name): {[_unit, ["germany", "of6_brigadegeneral"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Brigadegeneral!";};
    case ("GenMaj." in _name): {[_unit, ["germany", "of6_brigadegeneral"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Generalmajor!";};
    case ("GenLt." in _name): {[_unit, ["germany", "of6_brigadegeneral"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Generalleutnant!";};
    case ("Gen." in _name): {[_unit, ["germany", "of6_brigadegeneral"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist General!";};
    //Alle anderen
    case ("Lt." in _name): {[_unit, ["germany", "of1a_leutnant"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Leutnant!";};
    case ("Maj." in _name): {[_unit, ["germany", "of3_major"]] call etr_ranks_functions_fnc_setIcon; systemChat "Du bist Major!";};
    default {[_unit, ["germany", "or1_soldat"]] call etr_ranks_functions_fnc_setIcon; systemChat "Dein Name enthält leider keinen Rangkürzel oder du hast kein Eigenes Patch.";};
};