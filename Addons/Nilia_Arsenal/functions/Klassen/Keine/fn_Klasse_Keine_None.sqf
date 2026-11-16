//
//	Author: [EuDef] Nilia
//
//	Description:
//		This File Contains an Array to add to an Whitelisted ACE-Arsenal
//      Klasse: Allgemeine Items
//      Rang: keiner
//
//	Important:
//      The Last Item cannot have a Comma! All other MUST have commas after each Item!
//
//	Parameter(s):
//
//	Returns:
//		CONTENT
//
//	Example:
//		#include "Klassen\Keine\None.hpp"
//
private _baseItems =
[
  "CUP_hgun_FlareGun","hlc_pistol_P226R_357Combat"
];

// MissionNamespace Items anhängen
private _MnsItems = missionNamespace getVariable ["Nilia_MNS_Allgemein", []];
if !(_MnsItems isEqualType []) then { _MnsItems = ["itemCompass"]; };

// Rückgabe: Original + MNS
_baseItems + _MnsItems