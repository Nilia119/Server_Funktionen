#include "cfgPatches.hpp"
class CfgWeapons {
	#include "cfgWeapons.hpp"
};
class CfgMagazines {
	#include "cfgMagazines.hpp"
};
class Extended_PreInit_EventHandlers
{
	class Nilia_GreenMag_Compat_init
	{
		//Absoluten Pfad angeben, immer! auch in der XEH Datei!
		init = "call compile preprocessFileLineNumbers 'Nilia_ZZPatches\Nilia_GreenMag\XEH_preInit.sqf'";

	};
};