//
//	Author: [EuDef] Nilia
//
//	Description:
//		This File Contains an Array to add to an Whitelisted ACE-Arsenal
//      Klasse: Standard
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
        "B_Rangemaster_belt","B_Rangemaster_belt_khaki","B_Rangemaster_belt_coyote","B_Rangemaster_belt_black","B_Rangemaster_belt_tropic","B_Rangemaster_belt_woodland",
        "hlc_rifle_416D145","hlc_rifle_416D145_tan","hlc_rifle_416D145_wdl",
		"RM277_F","RM277_Blk_F","RM277_Khk_F",
        "hlc_rifle_G36E1",
        "hlc_rifle_G36V"
];

// MissionNamespace Items anhängen
private _MnsItems = missionNamespace getVariable ["Nilia_MNS_Standard", []];
if !(_MnsItems isEqualType []) then { _MnsItems = ["itemCompass"]; };

// Rückgabe: Original + MNS
_baseItems + _MnsItems