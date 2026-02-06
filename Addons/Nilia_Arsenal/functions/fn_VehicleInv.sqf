//
//	Author: [9.JgKp]Nilia
//
//	Description:
//		Script zum Hinzufügen von Gegeständen zu Fahrzeug Inventaren
//
//	Parameter(s):
//                  0: Name des Objektes auf das das Script angewendet werden soll
//
//	Returns:
//		BOOLEAN
//
//	Example:
//      _this call Nilia_fnc_VehicleInv;
//		[] call Nilia_fnc_VehicleInv;
//		[_unit] call Nilia_fnc_VehicleInv;
//
//  Inventar stand 06.02.2026

//if (!isServer) exitWith { hint "Kein Server!" };

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Inventar Konnte nicht Geladen werden" };

clearWeaponCargoGlobal _obj;
clearMagazineCargoGlobal _obj;
clearItemCargoGlobal _obj;
clearBackpackCargoGlobal _obj;

{
_obj addWeaponCargoGlobal _x;
} forEach [["hlc_rifle_416D10", 3]];

{
_obj addMagazineCargoGlobal _x;
} forEach [["hlc_30rnd_556x45_SOST_L5", 9], ["hlc_30rnd_556x45_t_L5", 9], ["kat_Carbonate", 10], ["kat_Caffeine", 20], ["SmokeShellBlue", 10], ["rhs_mag_m67", 10],
		   ["SmokeShell", 10], ["MRAWS_HE_F", 4], ["MAA_MAAWS_HE441_AB250", 2], ["MRAWS_HEAT_F", 4], ["MAA_MAAWS_ILLUM545", 3], ["MAA_MAAWS_MT756", 3],
		   ["MAA_MAAWS_SMOKE469", 2], ["kat_Painkiller", 10], ["SmokeShellPurple", 5]];

{
_obj addItemCargoGlobal _x;
} forEach [["kat_IV_16", 20], ["greenmag_ammo_556x45_basic_60Rnd", 20], ["greenmag_ammo_762x54_basic_60Rnd", 10], ["greenmag_ammo_9x19_basic_60Rnd", 2], ["kat_aatKit", 30],
		   ["ACE_adenosine", 10], ["kat_amiodarone", 17], ["kat_atropine", 20], ["ACE_fieldDressing", 40], ["ACE_elasticBandage", 40], ["ACE_packingBandage", 40],
		   ["ACE_quikclot", 40], ["kat_bloodIV_O_N", 15], ["kat_bloodIV_O_N_500", 10], ["kat_crossPanel", 2], ["KAT_Empty_bloodIV_250", 4], ["KAT_Empty_bloodIV_500", 4],
		   ["kat_chestSeal", 30], ["kat_EACA", 20], ["ACE_epinephrine", 30], ["kat_etomidate", 10], ["kat_IO_FAST", 15], ["kat_fentanyl", 10], ["kat_flumazenil", 10],
		   ["ACE_IR_Strobe_Item", 20], ["ACE_CableTie", 50], ["kat_ketamine", 10], ["kat_clamp", 2], ["kat_plate", 20], ["ACE_salineIV", 15], ["ACE_salineIV_250", 15],
		   ["ACE_salineIV_500", 15], ["kat_larynx", 20], ["kat_lidocaine", 20], ["kat_lorazepam", 10], ["ACE_morphine", 10], ["kat_nalbuphine", 20], ["kat_naloxone", 10],
		   ["kat_nitroglycerin", 5], ["kat_norepinephrine", 20], ["ACE_EarPlugs", 5], ["kat_phenylephrine", 30], ["kat_Pulseoximeter", 10], ["kat_retractor", 5],
		   ["ACE_splint", 20], ["greenmag_item_speedloader", 10], ["kat_scalpel", 10], ["kat_TXA", 20], ["ACE_WaterBottle", 10], ["ToolKit", 1], ["kat_BVM", 5],
		   ["kat_handWarmer", 10], ["kat_IFAK", 10], ["kat_epinephrineIV", 15], ["kat_oxygenTank_300_Empty", 1], ["kat_suction", 10], ["kat_nasal", 15], ["kat_ncdKit", 15],
		   ["kat_phenylephrineAuto", 40], ["ACE_MRE_CreamChickenSoup", 5], ["ACE_MRE_CreamTomatoSoup", 5], ["ACE_MRE_MeatballsPasta", 5], ["ACE_MRE_ChickenHerbDumplings", 5],
		   ["ACE_MRE_ChickenTikkaMasala", 5], ["ACE_MRE_LambCurry", 5], ["ACE_MRE_BeefStew", 5], ["ACE_MRE_SteakVegetables", 5], ["ACE_bodyBag_blue", 3], ["ACE_bodyBag", 3],
		   ["ACE_bodyBag_white", 3], ["ACE_painkillers_Item", 10], ["advrepair_SpareParts", 20], ["CBRN_gasmaskFilter", 20], ["EUFOR_Lexikon", 5],
		   ["greenmag_beltlinked_556x45_basic_100", 8], ["greenmag_beltlinked_762x54_basic_100", 8]];


/*
hint "Inventar wurde Geladen";
sleep 5;
hintSilent ""; // hides the previous hint display
 */
