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
        };

        class Nilia_Rank_Server_Functions
        {
            file="\Nilia_Loadout\Rank";

            class SetRank {};
        };

        class Nilia_Loadouts_Fleck_Server_Functions
        {
            //Path where script files can be found for all functions defined within this category
            //This should be a relative path from the base of your mod
            file="\Nilia_Loadout\Loadout\Fleck";

            //Name of file minus fn_ prefix. So fn_Arsenal.sqf
            class Loadout_Fleck_Breacher {};
            class Loadout_Fleck_DMR {};
            class Loadout_Fleck_Gren {};
            class Loadout_Fleck_GrpFhr {};
            class Loadout_Fleck_HMG {};
            class Loadout_Fleck_HMGHilf {};
            class Loadout_Fleck_KpFhr {};
            class Loadout_Fleck_LMG {};
            class Loadout_Fleck_PA {};
            class Loadout_Fleck_PAHilf {};
            class Loadout_Fleck_Pio {};
            class Loadout_Fleck_San {};
            class Loadout_Fleck_SanKAT {};
            class Loadout_Fleck_Schutze {};
            class Loadout_Fleck_SchutzeEH {};
            class Loadout_Fleck_SchutzeEHKAT {};
            class Loadout_Fleck_Sniper {};
            class Loadout_Fleck_Spotter {};
            class Loadout_Fleck_StvGrpFhr {};
            class Loadout_Fleck_ZgFhr {};
        };
        class Nilia_Loadouts_Tropen_Server_Functions
        {
            //Path where script files can be found for all functions defined within this category
            //This should be a relative path from the base of your mod
            file="\Nilia_Loadout\Loadout\Tropen";

            //Name of file minus fn_ prefix. So fn_Arsenal.sqf
            class Loadout_Tropen_Breacher {};
            class Loadout_Tropen_DMR {};
            class Loadout_Tropen_Gren {};
            class Loadout_Tropen_GrpFhr {};
            class Loadout_Tropen_HMG {};
            class Loadout_Tropen_HMGHilf {};
            class Loadout_Tropen_KpFhr {};
            class Loadout_Tropen_LMG {};
            class Loadout_Tropen_PA {};
            class Loadout_Tropen_PAHilf {};
            class Loadout_Tropen_Pio {};
            class Loadout_Tropen_San {};
            class Loadout_Tropen_SanKAT {};
            class Loadout_Tropen_Schutze {};
            class Loadout_Tropen_SchutzeEH {};
            class Loadout_Tropen_SchutzeEHKAT {};
            class Loadout_Tropen_Sniper {};
            class Loadout_Tropen_Spotter {};
            class Loadout_Tropen_StvGrpFhr {};
            class Loadout_Tropen_ZgFhr {};
        };
    };
};