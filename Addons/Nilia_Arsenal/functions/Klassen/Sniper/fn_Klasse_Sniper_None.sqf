//
//	Author: [EuDef] Nilia
//
//	Description:
//		This File Contains an Array to add to an Whitelisted ACE-Arsenal
//      Klasse: Sniper
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
        "hlc_rifle_awcovert_BL","hlc_rifle_awcovert_FDE","hlc_rifle_awcovert","hlc_rifle_awmagnum_BL","hlc_rifle_awMagnum_BL_ghillie","hlc_rifle_awmagnum_FDE",
        "hlc_rifle_awMagnum_FDE_ghillie","hlc_rifle_awmagnum","hlc_rifle_awMagnum_OD_ghillie","srifle_GM6_F",
        "hlc_wp_SSR_Blk","hlc_WP_SSR","hlc_wp_SSR_camo" //DMR
];

// MissionNamespace Items anhängen
private _MnsItems = missionNamespace getVariable ["Nilia_MNS_Sniper", []];
if !(_MnsItems isEqualType []) then { _MnsItems = ["itemCompass"]; };

// Rückgabe: Original + MNS
_baseItems + _MnsItems