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
        };
    };
};