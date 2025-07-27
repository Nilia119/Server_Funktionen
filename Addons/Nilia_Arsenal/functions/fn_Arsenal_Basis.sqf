//
//	Author: [EuDef]Nilia
//
//	Description:
//		Script zum Hinzufügen des Limitierten ACE Arsenals auf unserem Server ohne Waffen
//
//	Parameter(s):
//                  0: Name des Objektes auf das das Arsenal angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//		[] call Nilia_fnc_Arsenal_Basis
//		[this] call Nilia_fnc_Arsenal_Basis;
//
//Arsenal stand 17.10.2024

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Arsenal Konnte nicht Geladen werden" };


[ _obj,
[

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

], true ] call ace_arsenal_fnc_initBox; //true to add arsenal globally

/*
hint "Arsenal wurde Geladen";
sleep 5;
hintSilent "";
 */