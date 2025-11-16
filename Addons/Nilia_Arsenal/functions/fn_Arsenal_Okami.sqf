//
//	Author: [9.JgKp]Nilia
//
//	Description:
//		Script zum Hinzufügen des Limitierten ACE Arsenals auf unserem Server
//
//	Parameter(s):
//                  0: Name des Objektes auf das das Arsenal angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Okami;
//		[this] call Nilia_fnc_Arsenal_Okami;
//
//Arsenal stand 27.10.2024

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Arsenal Konnte nicht Geladen werden" };


[ _obj,
[

        #include "Content\Ammo.hpp",
        #include "Content\Grenades.hpp",
        #include "Content\Items.hpp",
        #include "Content\LimitedItems.hpp",
        #include "Content\BaseItems.hpp"

], true ] call ace_arsenal_fnc_initBox; //true to add arsenal globally