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
//		[] call Nilia_fnc_Arsenal_Voll;
//		[this] call Nilia_fnc_Arsenal_Voll;
//
//Arsenal stand 27.10.2024

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Arsenal Konnte nicht Geladen werden" };

clearWeaponCargoGlobal _obj;
clearMagazineCargoGlobal _obj;
clearItemCargoGlobal _obj;
clearBackpackCargoGlobal _obj;


[ _obj,
[

        #include "Content\Uniforms.hpp",
        #include "Content\Vests.hpp",
        #include "Content\Backpacks.hpp",
        #include "Content\Helmets.hpp",
        #include "Content\Weapons.hpp",
        #include "Content\Sidearms.hpp",
        #include "Content\Launcher.hpp",
        #include "Content\LimitedAttachments.hpp",
        #include "Content\LimitedAttire.hpp",
        #include "Content\LimitedItems.hpp",
        #include "Content\Attachments.hpp",
        #include "Content\NVG.hpp",
        #include "Content\Ammo.hpp",
        #include "Content\Grenades.hpp",
        #include "Content\Items.hpp",
        #include "Content\BaseItems.hpp"

], true ] call ace_arsenal_fnc_initBox; //true to add arsenal globally

// Aktion für das Spieler Arsenal:

params ["_object"];

if (isNull _object) exitWith {};

_action = ["Nilia_Player_Arsenal", "<t color='#417EFF'>Öffne dein Eigenes Arsenal", "", {player call Nilia_fnc_Arsenal_Calculate;}, {true}] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


/*
hint "Arsenal wurde Geladen";
sleep 5;
hintSilent "";
 */