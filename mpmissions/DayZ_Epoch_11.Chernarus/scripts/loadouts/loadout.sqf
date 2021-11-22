//Default Loadout
DefaultMagazines = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","17Rnd_9x19_glock17","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemAntibiotic","ItemWaterbottleBoiled","FoodbeefCooked"];
DefaultWeapons = ["glock17_EP1","Binocular","ItemMap","ItemGPS","ItemKnife","Itemtoolbox"];
DefaultBackpack = "DZ_Patrol_Pack_EP1";
DefaultBackpackWeapon = "";

//Admin Loadout
if ((getPlayerUID player) in ["76561198094473897","76561198066273558"]) then {  //Admins: Klix, Ballaual
    DefaultMagazines = ["ItemBandage","ItemBandage","30Rnd_9x19_UZI_SD","30Rnd_9x19_UZI_SD","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemAntibiotic","ItemWaterbottleBoiled","FoodbeefCooked"];
    DefaultWeapons = ["UZI_SD_EP1","Binocular_Vector","ItemMap","ItemGPS","ItemKnife","Itemtoolbox"];
    DefaultBackpack = "DZ_ALICE_Pack_EP1";
    DefaultBackpackWeapon = "";
    };