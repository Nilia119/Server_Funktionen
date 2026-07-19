class CfgFunctions {
    //Project name
    class Nilia_Loadout_Functions
    {
    	//Prefix for functions ie Nilia_fnc_# (_fnc_ is added automatically between tag and file name see below)
    	tag = "Nilia";
      
        //Category
        class Nilia_Loadout_Server_Functions
        {
            //Path where script files can be found for all functions defined within this category
            //This should be a relative path from the base of your mod
            file="\Nilia_Loadout\functions";
          
            //Name of file minus fn_ prefix. So fn_Arsenal.sqf
            class Fleck {};
            class Tropen {};
            class Loadout {};
	        class Loadout_Emblem_Icon {};
			class Loadout_Sprache {};
	        class Loadout_Rechte {};
        };

        class Nilia_Rank_Server_Functions
        {
            file="\Nilia_Loadout\Rank";

            class SetRank {};
        };

        class Nilia_Loadouts_Allgemein_Server_Functions
        {
            file="\Nilia_Loadout\Loadout\Allgemein";

            class Loadout_Allgemein_HeliPilot {};
            class Loadout_Allgemein_JetPilot {};
        };

        class Nilia_Loadouts_2_0
        {
            file="\Nilia_Loadout\Loadout\2";

            class Loadout_AA {};
            class Loadout_AAHilf {};
            class Loadout_Breacher {};
            class Loadout_DMR {};
            class Loadout_Gren {};
            class Loadout_GrpFhr {};
            class Loadout_HMG {};
            class Loadout_HMGHilf {};
            class Loadout_KpFhr {};
            class Loadout_MunT {};
            class Loadout_PA {};
            class Loadout_PAHilf {};
            class Loadout_Pio {};
            class Loadout_San {};
            class Loadout_Schutze {};
            class Loadout_SchutzeEH {};
            class Loadout_SchutzeLAT {};
            class Loadout_Sniper {};
            class Loadout_Spotter {};
            class Loadout_StvGrpFhr {};
            class Loadout_TrpFhr {};
            class Loadout_ZgFhr {};
        };

        class Nilia_Loadouts_Fleck_Server_Functions
        {
            //Path where script files can be found for all functions defined within this category
            //This should be a relative path from the base of your mod
            file="\Nilia_Loadout\Loadout\Fleck";

            //Name of file minus fn_ prefix. So fn_Arsenal.sqf
            class Loadout_Fleck_AA {};
            class Loadout_Fleck_AAHilf {};
            class Loadout_Fleck_Breacher {};
            class Loadout_Fleck_DMR {};
            class Loadout_Fleck_Gren {};
            class Loadout_Fleck_GrpFhr {};
            class Loadout_Fleck_HMG {};
            class Loadout_Fleck_HMGHilf {};
            class Loadout_Fleck_KpFhr {};
            class Loadout_Fleck_MunT {};
            class Loadout_Fleck_PA {};
            class Loadout_Fleck_PAHilf {};
            class Loadout_Fleck_Pio {};
            class Loadout_Fleck_San {};
            class Loadout_Fleck_Schutze {};
            class Loadout_Fleck_SchutzeEH {};
            class Loadout_Fleck_SchutzeLAT {};
            class Loadout_Fleck_Sniper {};
            class Loadout_Fleck_Spotter {};
            class Loadout_Fleck_StvGrpFhr {};
            class Loadout_Fleck_TrpFhr {};
            class Loadout_Fleck_ZgFhr {};
        };
        class Nilia_Loadouts_Tropen_Server_Functions
        {
            //Path where script files can be found for all functions defined within this category
            //This should be a relative path from the base of your mod
            file="\Nilia_Loadout\Loadout\Tropen";

            //Name of file minus fn_ prefix. So fn_Arsenal.sqf
            class Loadout_Tropen_AA {};
            class Loadout_Tropen_AAHilf {}
            class Loadout_Tropen_Breacher {};
            class Loadout_Tropen_DMR {};
            class Loadout_Tropen_Gren {};
            class Loadout_Tropen_GrpFhr {};
            class Loadout_Tropen_HMG {};
            class Loadout_Tropen_HMGHilf {};
            class Loadout_Tropen_KpFhr {};
            class Loadout_Tropen_MunT {};
            class Loadout_Tropen_PA {};
            class Loadout_Tropen_PAHilf {};
            class Loadout_Tropen_Pio {};
            class Loadout_Tropen_San {};
            class Loadout_Tropen_Schutze {};
            class Loadout_Tropen_SchutzeEH {};
            class Loadout_Tropen_SchutzeLAT {};
            class Loadout_Tropen_Sniper {};
            class Loadout_Tropen_Spotter {};
            class Loadout_Tropen_StvGrpFhr {};
            class Loadout_Tropen_TrpFhr {};
            class Loadout_Tropen_ZgFhr {};
        };
    };
};