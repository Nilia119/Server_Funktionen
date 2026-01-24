class ItemCore;
class InventoryItem_Base_F;
class VestItem;
class EUFOR_Helmets_Beret_EuDef;

class Vest_Camo_Base: ItemCore
    {
     class ItemInfo;
    };

//  EUFOR

class H_Barett_EuDeF: EUFOR_Helmets_Beret_EuDef
{
    scope=1;
    scopeCurator = 1;
    scopeArsenal = 1;
    displayName = "ICH BIN EIN EUDEF BARRETT; ÄNDERE MICH!!!";
};



//  PBW

class PBW_splitterschutz_base: Vest_Camo_Base
{
    author="PBW-Team";
    scope=0;
    picture="\german_vests\UI\pbw_splitter_all.paa";
    hiddenSelections[]={};
    hiddenSelectionsTextures[]={};
    descriptionShort = "$STR_A3_SP_AL_V";   // Zeigt im Inventar Schutzklasse V, wenn Bohemia die Übersetzung fixxt xD xD xD
    class ItemInfo: ItemInfo
    {
        hiddenSelections[]={};
        model="german_vests\pbw_splitter_grpfhr.p3d";
        containerClass="Supply250";
        mass=120;
        class HitpointsProtectionInfo
        {
            class Neck
            {
                hitpointName="HitNeck";
                armor=25;
                passThrough=0.5;
                material = -1;
            };
            class Arms
            {
                hitpointName="HitArms";
                armor=25;
                passThrough=0.5;
                material = -1;
            };
            class Chest
            {
                hitpointName="HitChest";
                armor=28;
                passThrough=0.1;
                material = -1;
            };
            class Diaphragm
            {
                hitpointName="HitDiaphragm";
                armor=28;
                passThrough=0.1;
                material = -1;
            };
            class Abdomen
            {
                hitpointName="HitAbdomen";
                armor=28;
                passThrough=0.1;
                material = -1;
            };
            class Pelvis
            {
                hitpointName="HitPelvis";
                armor=25;
                passThrough=0.1;
                material = -1;
            };
            class Body
            {
                hitpointName="HitBody";
                armor = 28;
                passThrough=0.1;
            };
        };
    };
};

class pbw_splitter_grpfhr: PBW_splitterschutz_base
{
    scope=1;
    author="PBW-Team";
    displayName="$STR_Splitter_GrpFhr_Fleck_name";
    model="german_vests\pbw_splitter_grpfhr.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="german_vests\pbw_splitter_grpfhr.p3d";
    };
};
class pbw_splitter_mg: PBW_splitterschutz_base
{
    scope=1;
    author="PBW-Team";
    displayName="$STR_Splitter_MGSchuetze_Fleck_name";
    model="german_vests\pbw_splitter_mg.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="german_vests\pbw_splitter_mg.p3d";
    };
};
class pbw_splitter_mg_h: PBW_splitterschutz_base
{
    scope=1;
    author="PBW-Team";
    displayName="$STR_Splitter_MGHilf_Fleck_name";
    model="german_vests\pbw_splitter_mg_h.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="german_vests\pbw_splitter_mg_h.p3d";
    };
};
class pbw_splitter_sani: PBW_splitterschutz_base
{
    scope=1;
    author="PBW-Team";
    displayName="$STR_Splitter_Sanitaeter_Fleck_name";
    model="german_vests\pbw_splitter_sani.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="german_vests\pbw_splitter_sani.p3d";
    };
};
class pbw_splitter_schtz: PBW_splitterschutz_base
{
    scope=1;
    author="PBW-Team";
    displayName="$STR_Splitter_Schuetze_Fleck_name";
    model="german_vests\pbw_splitter_schtz.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="german_vests\pbw_splitter_schtz.p3d";
    };
};
class pbw_splitter_zivil: PBW_splitterschutz_base
{
    scope=1;
    author="PBW-Team";
    displayName="$STR_Splitter_Zivil_Fleck_name";
    picture="\german_vests\UI\pbw_splitter_zivil.paa";
    model="german_vests\pbw_splitter_zivil.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="german_vests\pbw_splitter_zivil.p3d";
    };
};

// BWMOD

class V_PlateCarrier1_rgr;
class V_PlateCarrier2_rgr: V_PlateCarrier1_rgr
{
    class ItemInfo;
};
class BWA3_Vest_Fleck: V_PlateCarrier2_rgr
{
    author="$STR_BWA3_Author";
    scope=1;
    displayName="$STR_BWA3_VestFleckName";
    picture="\bwa3_vests\ui\bwa3_vest_fleck_x_ca.paa";
    model="\bwa3_vests\bwa3_vest.p3d";
    descriptionShort="$STR_A3_SP_AL_V";
    hiddenSelections[]=
    {
        "Camo"
    };
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_fleck_co.paa"
    };
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest.p3d";
        containerclass="Supply250";
        mass=140;
        class HitpointsProtectionInfo
        {
            class Neck
            {
                hitpointName="HitNeck";
                armor=25;
                passThrough=0.5;
                material = -1;
            };
            class Arms
            {
                hitpointName="HitArms";
                armor=25;
                passThrough=0.5;
                material = -1;
            };
            class Chest
            {
                hitpointName="HitChest";
                armor=28;
                passThrough=0.1;
                material = -1;
            };
            class Diaphragm
            {
                hitpointName="HitDiaphragm";
                armor=28;
                passThrough=0.1;
                material = -1;
            };
            class Abdomen
            {
                hitpointName="HitAbdomen";
                armor=28;
                passThrough=0.1;
                material = -1;
            };
            class Pelvis
            {
                hitpointName="HitPelvis";
                armor=25;
                passThrough=0.1;
                material = -1;
            };
            class Body
            {
                hitpointName="HitBody";
                armor = 28;
                passThrough=0.1;
            };
        };
        hiddenSelections[]=
        {
            "Camo"
        };
    };
};
class BWA3_Vest_Tropen: BWA3_Vest_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestTropenName";
    picture="\bwa3_vests\ui\bwa3_vest_tropen_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_tropen_co.paa"
    };
};
class BWA3_Vest_Multi: BWA3_Vest_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestMultiName";
    picture="\bwa3_vests\ui\bwa3_vest_multi_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_multi_co.paa"
    };
};
class BWA3_Vest_Rifleman_Fleck: BWA3_Vest_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestRiflemanFleckName";
    picture="\bwa3_vests\ui\bwa3_vest_rifleman1_fleck_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_rifleman1.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_rifleman1.p3d";
    };
};
class BWA3_Vest_Rifleman_Tropen: BWA3_Vest_Rifleman_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestRiflemanTropenName";
    picture="\bwa3_vests\ui\bwa3_vest_rifleman1_tropen_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_tropen_co.paa"
    };
};
class BWA3_Vest_Rifleman_Multi: BWA3_Vest_Rifleman_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestRiflemanMultiName";
    picture="\bwa3_vests\ui\bwa3_vest_rifleman1_multi_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_multi_co.paa"
    };
};
class BWA3_Vest_MachineGunner_Fleck: BWA3_Vest_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestMachineGunnerFleckName";
    picture="\bwa3_vests\ui\bwa3_vest_machinegunner_fleck_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_machinegunner.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_machinegunner.p3d";
    };
};
class BWA3_Vest_MachineGunner_Tropen: BWA3_Vest_MachineGunner_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestMachineGunnerTropenName";
    picture="\bwa3_vests\ui\bwa3_vest_machinegunner_tropen_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_tropen_co.paa"
    };
};
class BWA3_Vest_MachineGunner_Multi: BWA3_Vest_MachineGunner_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestMachineGunnerMultiName";
    picture="\bwa3_vests\ui\bwa3_vest_machinegunner_multi_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_multi_co.paa"
    };
};
class BWA3_Vest_Grenadier_Fleck: BWA3_Vest_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestGrenadierFleckName";
    picture="\bwa3_vests\ui\bwa3_vest_grenadier_fleck_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_grenadier.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_grenadier.p3d";
    };
};
class BWA3_Vest_Grenadier_Tropen: BWA3_Vest_Grenadier_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestGrenadierTropenName";
    picture="\bwa3_vests\ui\bwa3_vest_grenadier_tropen_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_tropen_co.paa"
    };
};
class BWA3_Vest_Grenadier_Multi: BWA3_Vest_Grenadier_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestGrenadierMultiName";
    picture="\bwa3_vests\ui\bwa3_vest_grenadier_multi_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_multi_co.paa"
    };
};
class BWA3_Vest_Medic_Fleck: BWA3_Vest_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestMedicFleckName";
    picture="\bwa3_vests\ui\bwa3_vest_medic_fleck_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_medic.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_medic.p3d";
    };
};
class BWA3_Vest_Medic_Tropen: BWA3_Vest_Medic_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestMedicTropenName";
    picture="\bwa3_vests\ui\bwa3_vest_medic_tropen_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_tropen_co.paa"
    };
};
class BWA3_Vest_Medic_Multi: BWA3_Vest_Medic_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestMedicMultiName";
    picture="\bwa3_vests\ui\bwa3_vest_medic_multi_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_multi_co.paa"
    };
};
class BWA3_Vest_Marksman_Fleck: BWA3_Vest_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestMarksmanFleckName";
    picture="\bwa3_vests\ui\bwa3_vest_marksman_fleck_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_marksman.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_marksman.p3d";
    };
};
class BWA3_Vest_Marksman_Tropen: BWA3_Vest_Marksman_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestMarksmanTropenName";
    picture="\bwa3_vests\ui\bwa3_vest_marksman_tropen_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_tropen_co.paa"
    };
};
class BWA3_Vest_Marksman_Multi: BWA3_Vest_Marksman_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestMarksmanMultiName";
    picture="\bwa3_vests\ui\bwa3_vest_marksman_multi_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_multi_co.paa"
    };
};
class BWA3_Vest_Leader_Fleck: BWA3_Vest_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestLeaderFleckName";
    picture="\bwa3_vests\ui\bwa3_vest_leader_fleck_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_leader.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_leader.p3d";
    };
};
class BWA3_Vest_Leader_Tropen: BWA3_Vest_Leader_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestLeaderTropenName";
    picture="\bwa3_vests\ui\bwa3_vest_leader_tropen_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_tropen_co.paa"
    };
};
class BWA3_Vest_Leader_Multi: BWA3_Vest_Leader_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestLeaderMultiName";
    picture="\bwa3_vests\ui\bwa3_vest_leader_multi_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_multi_co.paa"
    };
};
class BWA3_Vest_JPC_Rifleman_Fleck: V_PlateCarrier2_rgr
{
    author="$STR_BWA3_Author";
    scope=2;
    displayName="$STR_BWA3_VestJPCRiflemanFleckName";
    picture="\bwa3_vests\ui\bwa3_vest_jpc_fleck_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_jpc_rifleman.p3d";
    descriptionShort="$STR_A3_SP_AL_V";
    hiddenSelections[]=
    {
        "Camo",
                "Camo1",
                "Camo2",
                "Insignia"
    };
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_jpc_fleck_co.paa",
                "\bwa3_vests\data\bwa3_vest_jpc_pouches_fleck_co.paa",
                "\bwa3_vests\data\bwa3_vest_jpc_ca.paa"
    };
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_jpc_rifleman.p3d";
        containerclass="Supply250";
        mass=120;
        class HitpointsProtectionInfo
        {
            class Neck
            {
                hitpointName="HitNeck";
                armor=25;
                passThrough=0.5;
                material = -1;
            };
            class Arms
            {
                hitpointName="HitArms";
                armor=25;
                passThrough=0.5;
                material = -1;
            };
            class Chest
            {
                hitpointName="HitChest";
                armor=28;
                passThrough=0.1;
                material = -1;
            };
            class Diaphragm
            {
                hitpointName="HitDiaphragm";
                armor=28;
                passThrough=0.1;
                material = -1;
            };
            class Abdomen
            {
                hitpointName="HitAbdomen";
                armor=28;
                passThrough=0.1;
                material = -1;
            };
            class Pelvis
            {
                hitpointName="HitPelvis";
                armor=25;
                passThrough=0.1;
                material = -1;
            };
            class Body
            {
                hitpointName="HitBody";
                armor = 28;
                passThrough=0.1;
            };
        };
        hiddenSelections[]=
        {
            "Camo",
                    "Camo1",
                    "Camo2",
                    "Insignia"
        };
    };
};
class BWA3_Vest_JPC_Rifleman_Tropen: BWA3_Vest_JPC_Rifleman_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestJPCRiflemanTropenName";
    picture="\bwa3_vests\ui\bwa3_vest_jpc_tropen_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_jpc_tropen_co.paa",
                "\bwa3_vests\data\bwa3_vest_jpc_pouches_tropen_co.paa",
                "\bwa3_vests\data\bwa3_vest_jpc_ca.paa"
    };
};
class BWA3_Vest_JPC_Rifleman_Multi: BWA3_Vest_JPC_Rifleman_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestJPCRiflemanMultiName";
    picture="\bwa3_vests\ui\bwa3_vest_jpc_multi_x_ca.paa";
    hiddenSelectionsTextures[]=
    {
        "\bwa3_vests\data\bwa3_vest_jpc_multi_co.paa",
                "\bwa3_vests\data\bwa3_vest_jpc_pouches_fleck_co.paa",
                "\bwa3_vests\data\bwa3_vest_jpc_ca.paa"
    };
};
class BWA3_Vest_JPC_Leader_Fleck: BWA3_Vest_JPC_Rifleman_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestJPCLeaderFleckName";
    picture="\bwa3_vests\ui\bwa3_vest_jpc_fleck_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_jpc_leader.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_jpc_leader.p3d";
    };
};
class BWA3_Vest_JPC_Leader_Tropen: BWA3_Vest_JPC_Rifleman_Tropen
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestJPCLeaderTropenName";
    picture="\bwa3_vests\ui\bwa3_vest_jpc_tropen_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_jpc_leader.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_jpc_leader.p3d";
    };
};
class BWA3_Vest_JPC_Leader_Multi: BWA3_Vest_JPC_Rifleman_Multi
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestJPCLeaderMultiName";
    picture="\bwa3_vests\ui\bwa3_vest_jpc_multi_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_jpc_leader.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_jpc_leader.p3d";
    };
};
class BWA3_Vest_JPC_Radioman_Fleck: BWA3_Vest_JPC_Rifleman_Fleck
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestJPCRadiomanFleckName";
    picture="\bwa3_vests\ui\bwa3_vest_jpc_fleck_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_jpc_radioman.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_jpc_radioman.p3d";
    };
};
class BWA3_Vest_JPC_Radioman_Tropen: BWA3_Vest_JPC_Rifleman_Tropen
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestJPCRadiomanTropenName";
    picture="\bwa3_vests\ui\bwa3_vest_jpc_tropen_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_jpc_radioman.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_jpc_radioman.p3d";
    };
};
class BWA3_Vest_JPC_Radioman_Multi: BWA3_Vest_JPC_Rifleman_Multi
{
    author="$STR_BWA3_Author";
    displayName="$STR_BWA3_VestJPCRadiomanMultiName";
    picture="\bwa3_vests\ui\bwa3_vest_jpc_multi_x_ca.paa";
    model="\bwa3_vests\bwa3_vest_jpc_radioman.p3d";
    class ItemInfo: ItemInfo
    {
        uniformModel="\bwa3_vests\bwa3_vest_jpc_radioman.p3d";
    };
};