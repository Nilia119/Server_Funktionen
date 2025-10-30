class CfgFunctions {

    //Project name
    class Nilia_Arsenal_Functions
    {
    	//Prefix for functions ie Nilia_fnc_# (_fnc_ is added automatically between tag and file name see below)
    	tag = "Nilia";
      
        //Category
        class Nilia_Arsenal_Server_Functions
        {
            //Path where script files can be found for all functions defined within this category
            //This should be a relative path from the base of your mod
            file="\Nilia_Arsenal\functions";
          
            //Name of file minus fn_ prefix. So fn_Arsenal.sqf
            class Arsenal {};
            class Arsenal_Basis {};
            class Arsenal_Voll {};
            class Arsenal_New {};
			class Arsenal_Okami {};
            class VehicleInv {};

            class Arsenal_RK {};
            class Arsenal_Calculate {};
            class Arsenal_Basis_Compiled {};
            class Arsenal_Klasse_Standard {};
            class Arsenal_Klasse_DMR {};
            class Arsenal_Klasse_MG {};
            class Arsenal_Klasse_ULG {};
            class Arsenal_Klasse_LAT {};
            class Arsenal_Klasse_PA {};
            class Arsenal_Klasse_Sniper {};
            class Arsenal_Klasse_Kompakt1 {};
            class Arsenal_Klasse_Kompakt2 {};
            class Arsenal_Playeritems {};
            class Arsenal_RangundKlasse {};
            class Arsenal_RK_Debug {};
            class Arsenal_setGlobalRang {};

        };
        #include "\Nilia_Arsenal\functions\klassen\Keine\Keine.hpp"
        #include "\Nilia_Arsenal\functions\klassen\Standard\Standard.hpp"
        #include "\Nilia_Arsenal\functions\klassen\DMR\DMR.hpp"
        #include "\Nilia_Arsenal\functions\klassen\Sniper\Sniper.hpp"
        #include "\Nilia_Arsenal\functions\klassen\MG\MG.hpp"
        #include "\Nilia_Arsenal\functions\klassen\LAT\LAT.hpp"
        #include "\Nilia_Arsenal\functions\klassen\ULG\ULG.hpp"
        #include "\Nilia_Arsenal\functions\klassen\PA\PA.hpp"
        #include "\Nilia_Arsenal\functions\klassen\Kompakt1\Kompakt1.hpp"
        #include "\Nilia_Arsenal\functions\klassen\Kompakt2\Kompakt2.hpp"

    };
};

