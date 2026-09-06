class 680x51_TVCM_Ball;



class 680x51_TVCM_LR: 680x51_TVCM_Ball
{
	airLock=1;
	hit=16;
	indirectHit=0;
	indirectHitRange=0;
	cost=1;
	typicalSpeed=1450;
	airFriction=-0.00045;
	waterFriction=-0.30000001;
	cartridge="FxCartridge_TVCM";
	caliber=2.6;
	deflecting=8;
	visibleFire=4;
	audibleFire=35;
	nvgOnly=0;
	model="\A3\Weapons_f\Data\bullettracer\tracer_red";
	tracerScale=2;
	tracerStartTime=0.073;
	tracerEndTime=4;
	dangerRadiusBulletClose=12;
	dangerRadiusHit=14;
	suppressionRadiusBulletClose=8;
	suppressionRadiusHit=10;
	//  ACE
	ACE_caliber = 8.585;
	ACE_bulletLength = 43.18;
	ACE_bulletMass = 19.44;
	ACE_ballisticCoefficients[] = {0.368};
	ACE_muzzleVelocities[] = {1450};
	class CamShakeExplode
	{
		power=2.52843;
		duration=0.5;
		frequency=20;
		distance=7.48528;
	};
	class CamShakeHit
	{
		power=8;
		duration=0.4;
		frequency=20;
		distance=1;
	};
};

// ==========================================
// 1. GRÜNER TRACER (Green)
// ==========================================
class 680x51_TVCM_T_G: 680x51_TVCM_Ball
{
	// Pfad zum Standard-Modell für grüne Leuchtspuren im Spiel
	model = "\A3\Weapons_f\Data\bullettracer\tracer_green";
	tracerScale = 2; // Größe der Leuchtspur (Standard ist meist 1 bis 1.5)
	tracerStartTime = 0.05;
	tracerEndTime = 4;
};

// ==========================================
// 2. GELBER TRACER (Yellow)
// ==========================================
class 680x51_TVCM_T_Y: 680x51_TVCM_Ball
{
	model = "\A3\Weapons_f\Data\bullettracer\tracer_yellow";
	tracerScale = 2;
	tracerStartTime = 0.05;
	tracerEndTime = 4;
};

// ==========================================
// 3. ROTER TRACER (Red)
// ==========================================
class 680x51_TVCM_T_R: 680x51_TVCM_Ball
{
	model = "\A3\Weapons_f\Data\bullettracer\tracer_red";
	tracerScale = 2;
	tracerStartTime = 0.05;
	tracerEndTime = 4;
};

// ==========================================
// 4. BLAUER TRACER (Blue)
// ==========================================
class 680x51_TVCM_T_B: 680x51_TVCM_Ball
{
// Arma besitzt standardmäßig keinen blauen Standard-Tracer.
// Wir nutzen das weiße/blaue Licht der Flares/Spezialeffekte als Pfad.
	model = "\Nilia_ZZPatches\Nilia_BlueTracer\data\tracer_blue";
	//model = "\A3\Weapons_f\Data\bullettracer\tracer_red";
	tracerScale = 2;
	tracerStartTime = 0.05;
	tracerEndTime = 4;
	tracerColor[] = {0, 0, 1, 1};
	tracerColorR[] = {0, 0, 1, 1};
};

// ==========================================
// 5. IR-TRACER (Infrarot / Nur mit NVG sichtbar)
// ==========================================
class 680x51_TVCM_T_IR: 680x51_TVCM_Ball
{
	model = "\A3\Weapons_f\Data\bullettracer\tracer_red"; // Nutzt meist Rot als Basis
	nvgOnly = 1;       // WICHTIG: 1 = Nur sichtbar durch Nachtsichtgeräte (IR-Dim)
	tracerScale = 0.8;  // Etwas kleiner, da IR-Spuren oft dezenter sind
	tracerStartTime = 0.05;
	tracerEndTime = 4;
};