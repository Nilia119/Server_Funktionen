//
//	Author: [EuDef] Nilia
//
//	Description:
//		Script zum Hinzufügen der Basis Items des Limitierten ACE Arsenals zu den Spielerspezifischen Loadouts
//
//	Important:
//      The Last Item cannot have a Comma! All other MUST have commas after each Item!
//	Parameter(s):
//
//
//	Returns:
//		Array of Items
//
//	Example:
//		[] call Nilia_fnc_Arsenal_New
//		[this] call Nilia_fnc_Arsenal_New; [this,0,0,0,0,0] call Nilia_fnc_Arsenal_New;
//      Funktioniert, muss nur auskommentiert werden! Hinter NVG, komma setzten!

params [["_unit", objNull, [objNull]]];
private _items = [];

_items = [
        #include "Content\Uniforms.hpp",
        #include "Content\Vests.hpp",
        #include "Content\Backpacks.hpp",
        #include "Content\Helmets.hpp",
        #include "Content\Attachments.hpp",
        #include "Content\NVG.hpp",
        #include "Content\Ammo.hpp",
        #include "Content\Grenades.hpp",
        #include "Content\Items.hpp",
        #include "Content\BaseItems.hpp"
        ];

systemChat "Allgemeine Gegenstände wurden geladen";

_unit setVariable ["Nilia_AllgemeineItems", _items];