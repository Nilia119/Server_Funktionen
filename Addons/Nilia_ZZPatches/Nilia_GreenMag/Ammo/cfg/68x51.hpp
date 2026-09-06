class greenmag_ammo_68x51_N_basic_1Rnd: greenmag_core_1Rnd
{
	author="Nilia";
	displayName="6,8x51mm - 1 Patrone";  //"$STR_greenmag_main_545x39_basic_1Rnd";
	scope=2;
	scopeArsenal=2;
	scopeCurator=2;
	picture="\z\greenmag\addons\main\data\556mm.paa";
	mass=0.1;    // Standard? 0.15
	ACE_isUnique = 1;
};
class greenmag_ammo_68x51_N_basic_60Rnd: greenmag_core_60Rnd
{
	author="Nilia";
	displayName="6,8x51mm - 60 Patronen";  //"$STR_greenmag_main_545x39_basic_1Rnd";
	scope=2;
	scopeArsenal=2;
	scopeCurator=2;
	greenmag_ammotype="greenmag_ammo_68x51_N_basic_1Rnd";
	ACE_isUnique = 1;
};
class greenmag_ammo_68x51_N_basic_300Rnd: greenmag_core_N_300Rnd
{
	author="Nilia";
	displayName="6,8x51mm - 300 Patronen";  //"$STR_greenmag_main_545x39_basic_1Rnd";
	scope=2;
	scopeArsenal=2;
	scopeCurator=2;
	greenmag_ammotype="greenmag_ammo_68x51_N_basic_1Rnd";
	ACE_isUnique = 1;
};