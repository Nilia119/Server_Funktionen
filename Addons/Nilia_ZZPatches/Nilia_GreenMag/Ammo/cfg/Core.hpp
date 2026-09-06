class CBA_MiscItem;
class CBA_MiscItem_ItemInfo;
class greenmag_core_box;
class greenmag_core_1Rnd;
class greenmag_core_10Rnd;
class greenmag_core_20Rnd;
class greenmag_core_30Rnd;
class greenmag_core_40Rnd;
class greenmag_core_50Rnd;
class greenmag_core_60Rnd;

class greenmag_core_N_100Rnd: greenmag_core_box
{
	author="Nilia";
	picture="\z\greenmag\addons\main\data\box_60rnd.paa";
	model="\A3\weapons_F\ammo\mag_univ.p3d";
	greenmag_bullets=100;
	class ItemInfo: CBA_MiscItem_ItemInfo
	{
		mass=15;
	};
};
class greenmag_core_N_300Rnd: greenmag_core_box
{
	author="Nilia";
	picture="\z\greenmag\addons\main\data\box_60rnd.paa";
	model="\A3\weapons_F\ammo\mag_univ.p3d";
	greenmag_bullets=300;
	class ItemInfo: CBA_MiscItem_ItemInfo
	{
		mass=45;
	};
};