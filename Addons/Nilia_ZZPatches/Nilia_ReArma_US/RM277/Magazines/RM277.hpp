
class RM277_Mag_Base_F;
class RM277_Drum_Base_F;

class RM277_Mag_Base_Spec_F: RM277_Mag_Base_F // TEMP!!
{
	author="Nilia";
	scope=0;
	ammo="680x51_TVCM_LR";
	count=10;
	initSpeed=1450;
	modelSpecial="\us_weapon\rifles\rm277_20mag_f.p3d";
	modelSpecialIsProxy=1;
	mass=10;
	magazineWell[] = {"RM277_680x51"};
};

class 30Rnd_680x51TVCM_Drum_F: RM277_Drum_Base_F
{
	author="Nilia";
	scope=2;
	model="\us_weapon\rifles\magazine_rm277_50rnd.p3d";
	count=30;
	displayName="6.8 mm TVCM 30Rnd Drum";
	displayNameShort="6.8 30rnd.";
	picture="\us_weapon\rifles\data\ui\ui_rm277_50mag.paa";
	tracersEvery=0;
	lastRoundsTracer=5;
	magazineWell[] = {"RM277_680x51"};
};

class 10Rnd_680x51TVCM_LR_Mag_F: RM277_Mag_Base_Spec_F
{
	scope=2;
	model="\us_weapon\rifles\magazine_rm277_20rnd.p3d";
	displayName="6.8 mm TVCM 10Rnd Special Long-Range Mag";
	displayNameShort="6.8 LR 10rnd.";
	picture="\us_weapon\rifles\data\ui\ui_rm277_20mag.paa";
	tracersEvery=0;
	lastRoundsTracer=2;
	magazineWell[] = {"RM277_680x51"};
};

class 20Rnd_680x51TVCM_Mag_T_G_F: RM277_Mag_Base_F
{
	author="Nilia";
	ammo="680x51_TVCM_T_G";
	scope=2;
	model="\us_weapon\rifles\magazine_rm277_20rnd.p3d";
	displayName="6.8 mm TVCM 20Rnd Green Tracer Mag";
	displayNameShort="6.8 G-Tracer";
	picture="\us_weapon\rifles\data\ui\ui_rm277_20mag.paa";
	tracersEvery=1;
	lastRoundsTracer=20;
	magazineWell[] = {"RM277_680x51"};
};

class 20Rnd_680x51TVCM_Mag_T_Y_F: RM277_Mag_Base_F
{
	author="Nilia";
	ammo="680x51_TVCM_T_Y";
	scope=2;
	model="\us_weapon\rifles\magazine_rm277_20rnd.p3d";
	displayName="6.8 mm TVCM 20Rnd Yellow Tracer Mag";
	displayNameShort="6.8 Y-Tracer";
	picture="\us_weapon\rifles\data\ui\ui_rm277_20mag.paa";
	tracersEvery=1;
	lastRoundsTracer=20;
	magazineWell[] = {"RM277_680x51"};
};

class 20Rnd_680x51TVCM_Mag_T_B_F: RM277_Mag_Base_F
{
	author="Nilia";
	ammo="680x51_TVCM_T_B";
	scope=2;
	model="\us_weapon\rifles\magazine_rm277_20rnd.p3d";
	displayName="6.8 mm TVCM 20Rnd Blue Tracer Mag";
	displayNameShort="6.8 B-Tracer";
	picture="\us_weapon\rifles\data\ui\ui_rm277_20mag.paa";
	tracersEvery=1;
	lastRoundsTracer=20;
	magazineWell[] = {"RM277_680x51"};
};

class 20Rnd_680x51TVCM_Mag_T_R_F: RM277_Mag_Base_F
{
	author="Nilia";
	ammo="680x51_TVCM_T_R";
	scope=2;
	model="\us_weapon\rifles\magazine_rm277_20rnd.p3d";
	displayName="6.8 mm TVCM 20Rnd Red Tracer Mag";
	displayNameShort="6.8 R-Tracer";
	picture="\us_weapon\rifles\data\ui\ui_rm277_20mag.paa";
	tracersEvery=1;
	lastRoundsTracer=20;
	magazineWell[] = {"RM277_680x51"};
};

class 20Rnd_680x51TVCM_Mag_T_IR_F: RM277_Mag_Base_F
{
	author="Nilia";
	ammo="680x51_TVCM_T_IR";
	scope=2;
	model="\us_weapon\rifles\magazine_rm277_20rnd.p3d";
	displayName="6.8 mm TVCM 20Rnd IR-Tracer Mag";
	displayNameShort="6.8 IR-Tracer";
	picture="\us_weapon\rifles\data\ui\ui_rm277_20mag.paa";
	tracersEvery=1;
	lastRoundsTracer=20;
	magazineWell[] = {"RM277_680x51"};
};