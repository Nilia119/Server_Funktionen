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
//		[] call Nilia_fnc_Vehicle
//		[this] call Nilia_fnc_VehicleInv;
//
//Inventar stand 13.08.2022

if (!isServer) exitWith { hint "Kein Server!" };

params[ [ "_obj", objNull, [ objNull ] ] ];
if (isNull _obj || { !( alive _obj ) } ) exitWith { hint "Inventar Konnte nicht Geladen werden" };

clearWeaponCargoGlobal _obj;
clearMagazineCargoGlobal _obj;
clearItemCargoGlobal _obj;
clearBackpackCargoGlobal _obj;

{
_obj addWeaponCargoGlobal _x;
} forEach [["hlc_rifle_G36C", 5]];

{
_obj addMagazineCargoGlobal _x;
} forEach [["hlc_30rnd_556x45_Tracers_G36", 40], ["hlc_30rnd_556x45_M_G36", 40], ["hlc_20rnd_762x51_MDim_G3", 10], ["MRAWS_HEAT_F", 5], ["MRAWS_HE_F", 5],
["BWA3_DM25", 10], ["BWA3_DM32_Blue", 10], ["B_IR_Grenade", 10], ["Laserbatteries", 2], ["MAA_MAAWS_MT756", 5], ["MAA_MAAWS_ILLUM545", 2], ["MAA_MAAWS_SMOKE469", 2],
["MAA_MAAWS_HE441_AB250", 2], ["kat_Carbonate", 10], ["kat_Painkiller", 10], ["PBW_DM51A1_Frag", 10]];

{
_obj addItemCargoGlobal _x;
} forEach [["ACE_CableTie", 10], ["ACE_EarPlugs", 5], ["ACE_fieldDressing", 50], ["ACE_packingBandage", 50], ["ACE_elasticBandage", 50], ["ACE_splint", 20], ["ACE_morphine", 10],
["ACE_epinephrine", 30], ["ACE_quikclot", 50], ["mgm_item_redgull", 25], ["ToolKit", 1], ["greenmag_ammo_556x45_basic_60Rnd", 30], ["greenmag_ammo_762x54_basic_60Rnd", 20], ["greenmag_ammo_9x19_basic_60Rnd", 2],
["greenmag_item_speedloader", 10], ["ACE_WaterBottle", 5], ["ACE_adenosine", 10], ["kat_larynx", 20], ["kat_guedel", 20], ["kat_accuvac", 1], ["kat_bloodIV_O_N", 15], ["KAT_Empty_bloodIV_500", 4],
["KAT_Empty_bloodIV_250", 4], ["kat_X_AED", 1], ["kat_crossPanel", 2], ["kat_IV_16", 20], ["kat_IO_FAST", 15], ["kat_naloxone", 10], ["kat_TXA", 20], ["kat_norepinephrine", 5], ["kat_phenylephrine", 5],
["kat_nitroglycerin", 5], ["kat_amiodarone", 20], ["kat_lidocaine", 20], ["kat_atropine", 20], ["kat_Pulseoximeter", 10], ["kat_chestSeal", 30], ["kat_aatKit", 30], ["kat_EACA", 20], ["kat_bloodIV_O_N_250", 15],
["kat_bloodIV_O_N_500", 15], ["ABP_Cocaine", 5], ["kat_etomidate", 10], ["kat_fentanyl", 15], ["kat_flumazenil", 10], ["kat_clamp", 10], ["ACE_salineIV", 15], ["ACE_salineIV_250", 15], ["ACE_salineIV_500", 15],
["kat_lorazepam", 10], ["kat_nalbuphine", 20], ["kat_ketamine", 20], ["kat_plate", 20], ["kat_retractor", 10], ["kat_scalpel", 20], ["kat_vacuum", 15]];

hint "Inventar wurde Geladen";