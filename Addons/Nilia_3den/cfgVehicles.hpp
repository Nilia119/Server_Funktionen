class CfgVehicles
{
    class C_IDAP_supplyCrate_F;
    class EUFOR_Flag_EU_H;
    class EUFOR_Flag_EU;

    // === Arsenale ===
    class Nilia_EuDef_Arsenal_Crate_Base : C_IDAP_supplyCrate_F {
        ACE_dragging_canCarry=1;
        ACE_dragging_canDrag=1;
        author = "Nilia";
        displayName = "Arsenal";
        editorCategory = "Nilia_EuDef";
        editorSubcategory = "Nilia_Eudef_Arsenal";
        scope = 0; // Sichtbar im Editor
        scopeCurator = 0; // Sichtbar in Zeus
        vehicleClass = "EuDef";
        class EventHandlers {};
    };

    class Nilia_EuDef_Arsenal_Crate : Nilia_EuDef_Arsenal_Crate_Base
    {
        displayName = "Arsenal";
        scope = 2;
        scopeCurator = 2;
        class EventHandlers
        {
            init = "_this call Nilia_fnc_Arsenal;";
        };
    };

    class Nilia_EuDef_Basis_Arsenal_Crate : Nilia_EuDef_Arsenal_Crate_Base
    {
        displayName = "Arsenal (Basis)";
        scope = 2;
        scopeCurator = 2;
        class EventHandlers
        {
            init = "_this call Nilia_fnc_Arsenal_Basis;";
        };
    };

    class Nilia_EuDef_Full_Arsenal_Crate : Nilia_EuDef_Arsenal_Crate_Base
    {
        displayName = "Arsenal (Vollständig)";
        scope = 2;
        scopeCurator = 2;
        class EventHandlers
        {
            init = "_this call Nilia_fnc_Arsenal_Voll;";
        };
    };

    class Nilia_EuDef_Nilia_Arsenal_Crate : Nilia_EuDef_Arsenal_Crate_Base
    {
        displayName = "Arsenal (Nilia)";
        scope = 2;
        scopeCurator = 2;
        class EventHandlers
        {
            init = "_this call Nilia_fnc_Arsenal_Nilia;";
        };
    };

    class Nilia_EuDef_Okami_Arsenal_Crate : Nilia_EuDef_Arsenal_Crate_Base
    {
        displayName = "Arsenal (TheOkami)";
        scope = 2;
        scopeCurator = 2;
        class EventHandlers
        {
            init = "_this call Nilia_fnc_Arsenal_Okami;";
        };
    };

    // === Fahnen ===
    class Nilia_EuDef_Fahne_Fleck : EUFOR_Flag_EU {
        author = "Nilia";
        displayName = "Flecktarn Ausrüstungen";
        editorCategory = "Nilia_EuDef";
        editorSubcategory = "Nilia_Eudef_Flags";
        scope = 2;
        scopeCurator = 2;
        vehicleClass = "EuDef";
        class EventHandlers
        {
            init = "_this call Nilia_fnc_Fleck; (_this select 0) setFlagTexture 'EUFOR_Objects\flags\Europa.paa';";
        };
    };

    class Nilia_EuDef_Fahne_Tropen : EUFOR_Flag_EU_H
    {
        author = "Nilia";
        displayName = "Tropentarn Ausrüstungen";
        editorCategory = "Nilia_EuDef";
        editorSubcategory = "Nilia_Eudef_Flags";
        scope = 2;
        scopeCurator = 2;
        vehicleClass = "EuDef";
        class EventHandlers
        {
            init = "_this call Nilia_fnc_Tropen; (_this select 0) setFlagTexture 'EUFOR_Objects\flags\Europa.paa';";
        };
    };

    // === Debug Fahnen ===
    class Nilia_EuDef_Fahne_Debug : EUFOR_Flag_EU {
        author = "Nilia";
        displayName = "Rang/Klasse Debug-Fahne";
        editorCategory = "Nilia_EuDef";
        editorSubcategory = "Nilia_Eudef_Debug";
        scope = 2;
        scopeCurator = 2;
        vehicleClass = "EuDef";
        class EventHandlers
        {
            init = "_this call Nilia_fnc_Arsenal_RK_Debug; (_this select 0) setFlagTexture 'EUFOR_Objects\flags\Europa.paa';";
        };
    };

    class Nilia_EuDef_Fahne_Debug_Klasse : EUFOR_Flag_EU {
        author = "Nilia";
        displayName = "Klasse Debug-Fahne";
        editorCategory = "Nilia_EuDef";
        editorSubcategory = "Nilia_Eudef_Debug";
        scope = 2;
        scopeCurator = 2;
        vehicleClass = "EuDef";
        class EventHandlers
        {
            init = "_this call Nilia_fnc_Arsenal_Debug_Klasse; (_this select 0) setFlagTexture 'EUFOR_Objects\flags\Europa.paa';";
        };
    };
};