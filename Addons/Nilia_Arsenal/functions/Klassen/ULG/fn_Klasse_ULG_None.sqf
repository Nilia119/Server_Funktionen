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
		"RM277GL_F","RM277GL_Blk_F","RM277GL_Khk_F",
        "hlc_rifle_G36E1AG36","hlc_rifle_G36VAG36"
];

// MissionNamespace Items anhängen
private _MnsItems = missionNamespace getVariable ["Nilia_MNS_ULG", []];
if !(_MnsItems isEqualType []) then { _MnsItems = ["itemCompass"]; };

// Rückgabe: Original + MNS
_baseItems + _MnsItems