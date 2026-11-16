//
//	Author: [EuDef] Nilia
//
//	Description:
//		This File Contains an Array to add to an Whitelisted ACE-Arsenal
//      Klasse: DMR
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
//		#include "Klassen\Standard\None.hpp"
//
private _baseItems =
[
        "launch_MRAWS_green_F","launch_MRAWS_olive_F","launch_MRAWS_sand_F"
];

// MissionNamespace Items anhängen
private _MnsItems = missionNamespace getVariable ["Nilia_MNS_PA", []];
if !(_MnsItems isEqualType []) then { _MnsItems = ["itemCompass"]; };

// Rückgabe: Original + MNS
_baseItems + _MnsItems