class EUFOR_Backpacks_Tortilia_Fleck_Medic;
class EUFOR_Backpacks_Tortilia_Fleck;
class EUFOR_Backpacks_Compact_Fleck;
class EUFOR_Backpacks_Compact_Fleck_Medic;
class EUFOR_Backpacks_Tortilia_Tropen;
class EUFOR_Backpacks_Tortilia_Tropen_Medic;
class EUFOR_Backpacks_Tortilia_Medic;
class EUFOR_Backpacks_Radiobag_Fleck;
/* class BWA3_AssaultPack_Tropen;
class BWA3_Kitbag_Tropen_Medic;
class BWA3_AssaultPack_Tropen_Medic;
class BWA3_FieldPack_tropen;
class BWA3_TacticalPack_Tropen;
class BWA3_Kitbag_Tropen;
class BWA3_PatrolPack_Tropen;
class BWA3_TacticalPack_Tropen_Medic;
class BWA3_FieldPack_Fleck;
class BWA3_PatrolPack_Fleck;
class BWA3_Kitbag_Fleck;
class BWA3_Kitbag_Fleck_Medic;
class BWA3_TacticalPack_Fleck;
class BWA3_TacticalPack_Fleck_Medic; */

class EUFOR_Backpack_Fleck_Tortilia_Arzt: EUFOR_Backpacks_Tortilia_Fleck_Medic
{
    scope=1;
    displayName = "ICH BIN EIN Großer Medic Rucksack; ÄNDERE MICH!!!";
};

class EUFOR_Backpack_Fleck_Tortilia: EUFOR_Backpacks_Tortilia_Fleck
{
    scope=1;
    displayName = "ICH BIN EIN Großer Rucksack; ÄNDERE MICH!!!";
};

class EUFOR_Backpack_Fleck_Compact: EUFOR_Backpacks_Compact_Fleck
{
    scope=1;
    displayName = "ICH BIN EIN ANGRIFFSPACK; ÄNDERE MICH!!!";
};

class EUFOR_Backpack_Fleck_Compact_Rk: EUFOR_Backpacks_Compact_Fleck_Medic
{
    scope=1;
    displayName = "ICH BIN EIN Medic ANGRIFFSPACK; ÄNDERE MICH!!!";
};

class EUFOR_Backpack_Tropen_Tortilia: EUFOR_Backpacks_Tortilia_Tropen
{
    scope=1;
    displayName = "ICH BIN EIN Großer Rucksack; ÄNDERE MICH!!!";
};

class EUFOR_Backpack_Tropen_Tortilia_Arzt: EUFOR_Backpacks_Tortilia_Tropen_Medic
{
    scope=1;
    displayName = "ICH BIN EIN Großer Medic Rucksack; ÄNDERE MICH!!!";
};

class EUFOR_Backpack_San_Tortilia: EUFOR_Backpacks_Tortilia_Medic
{
    scope=1;
    displayName = "ICH BIN EIN Großer Medic Rucksack; ÄNDERE MICH!!!";
};
/*  ORIGINAL KLASSE ERBEN, dann gehts siehe Westen
class BWA3_AssaultPack_Tropen : BWA3_AssaultPack_Tropen
{
    scope = 1;
};

class BWA3_Kitbag_Tropen_Medic : BWA3_Kitbag_Tropen_Medic
{
    scope = 1;
};

class BWA3_AssaultPack_Tropen_Medic : BWA3_AssaultPack_Tropen_Medic
{
    scope = 1;
};

class BWA3_FieldPack_tropen : BWA3_FieldPack_tropen
{
    scope = 1;
};

class BWA3_TacticalPack_Tropen : BWA3_TacticalPack_Tropen
{
    scope = 1;
};

class BWA3_Kitbag_Tropen : BWA3_Kitbag_Tropen
{
    scope = 1;
};

class BWA3_PatrolPack_Tropen : BWA3_PatrolPack_Tropen
{
    scope = 1;
};

class BWA3_TacticalPack_Tropen_Medic : BWA3_TacticalPack_Tropen_Medic
{
    scope = 1;
};

// Fleck
class BWA3_FieldPack_Fleck : BWA3_FieldPack_Fleck
{
    scope = 1;
};

class BWA3_PatrolPack_Fleck : BWA3_PatrolPack_Fleck
{
    scope = 1;
};

class BWA3_Kitbag_Fleck : BWA3_Kitbag_Fleck
{
    scope = 1;
};

class BWA3_Kitbag_Fleck_Medic : BWA3_Kitbag_Fleck_Medic
{
    scope = 1;
};

class BWA3_TacticalPack_Fleck : BWA3_TacticalPack_Fleck
{
    scope = 1;
};

class BWA3_TacticalPack_Fleck_Medic : BWA3_TacticalPack_Fleck_Medic
{
    scope = 1;
};
*/
//  TFAR RADIO

class EUFOR_Backpacks_RT1513G_Base: EUFOR_Backpacks_Radiobag_Fleck {
    scope = 0;
    scopeCurator = 0;
    scopeArsenal = 0;
    author = "Raspu, Gandi, Nkey, Nilia";
    picture = "Nilia_Equipment\Models\EUFOR_Backpacks_rt1513g_icon.paa";
    model = "Nilia_Equipment\Models\EUFOR_clf_nicecomm2.p3d";
    hiddenSelections[] = {"camo"};
    hiddenSelectionsTextures[] = {"Nilia_Equipment\Models\EUFOR_clf_nicecomm2_co.paa"};
    mass = 60;
};

class EUFOR_Backpacks_RT1513G_Fleck : EUFOR_Backpacks_RT1513G_Base {
    scope = 1;
    displaydisplayName = "$STR_EUFOR_Backpacks_RT1513G_Fleck";
    hiddenSelectionsTextures[]={"Nilia_Equipment\Models\EUFOR_Backpacks_RT1513G_Fleck_co.paa"};
};