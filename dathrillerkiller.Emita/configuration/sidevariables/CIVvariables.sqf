SpawnPoints = [["Civ_Spawn_1","true"],["Civ_Spawn_2","true"],["Civ_Spawn_3","true"],["Civ_Spawn_4","TowingService_id"],["Civ_Spawn_6","RT_id"],["Civ_Spawn_7","PMC_id"]];

isciv         	= true;						
iscop          	= false;	
isamedic      	= false;
ar_sidename = "Civilian";

/*DaThrillerKiller*/
USBW_Interactions = [
["'Buy House'",'_housesend = (nearestObjects [player, ["Land_HouseV2_04_interier","Land_House_C_4_EP1","Land_HouseV2_02_Interier","Land_HouseV_1L2","Land_HouseV_2L","Land_HouseV_2I","Land_HouseV_1L1","Land_sara_domek_zluty","Land_dum_mesto_in","Land_A_Villa_EP1","Land_dum_mesto2","Land_House_C_10_EP1","Land_HouseV_1I1","Land_HouseV2_01B","Land_HouseV2_03B","Land_houseV_2T2","Land_HouseV_1T","Land_cihlovej_dum_in","Land_hruzdum"],10] select 0);!isNil "_housesend" && {!(call DTK_AlreadyOwnsHouse)}','_housesend = (nearestObjects [player, ["Land_HouseV2_04_interier","Land_House_C_4_EP1","Land_HouseV2_02_Interier","Land_HouseV_1L2","Land_HouseV_2L","Land_HouseV_2I","Land_HouseV_1L1","Land_sara_domek_zluty","Land_dum_mesto_in","Land_A_Villa_EP1","Land_dum_mesto2","Land_House_C_10_EP1","Land_HouseV_1I1","Land_HouseV2_01B","Land_HouseV2_03B","Land_houseV_2T2","Land_HouseV_1T","Land_cihlovej_dum_in","Land_hruzdum"],10] select 0); [_housesend]call DTK_BuyHouse;'],
["'House Storage'",'_housesend1 = (nearestObjects [player, ["Land_HouseV2_04_interier","Land_House_C_4_EP1","Land_HouseV2_02_Interier","Land_HouseV_1L2","Land_HouseV_2L","Land_HouseV_2I","Land_HouseV_1L1","Land_sara_domek_zluty","Land_dum_mesto_in","Land_A_Villa_EP1","Land_dum_mesto2","Land_House_C_10_EP1","Land_HouseV_1I1","Land_HouseV2_01B","Land_HouseV2_03B","Land_houseV_2T2","Land_HouseV_1T","Land_cihlovej_dum_in","Land_hruzdum"],10] select 0); !isNil "_housesend1" && {([_housesend1]call DTK_OwnsHouse)}','[0,0,0,["INV_PrivateStorage", "save", []]]spawn Main_storage;'],
["'Garage'",'_housesend2 = (nearestObjects [player, ["Land_HouseV2_04_interier","Land_House_C_4_EP1","Land_HouseV2_02_Interier","Land_HouseV_1L2","Land_HouseV_2L","Land_HouseV_2I","Land_HouseV_1L1","Land_sara_domek_zluty","Land_dum_mesto_in","Land_A_Villa_EP1","Land_dum_mesto2","Land_House_C_10_EP1","Land_HouseV_1I1","Land_HouseV2_01B","Land_HouseV2_03B","Land_houseV_2T2","Land_HouseV_1T","Land_cihlovej_dum_in","Land_hruzdum"],10] select 0); !isNil "_housesend2" && {([_housesend2]call DTK_OwnsHouse)}','[dummyobj]call housing_Garage;'],
["'Drop Vehicle'",'dropVehicleVar','detach newvehicle; dropVehicleVar = false;'],
["'Harvest Marijuana'",'"as_p_fiberPlant_EP1"call drug_neardrug','[(nearestobjects [getpos player, ["as_p_fiberPlant_EP1"], 5] select 0),"MarijuanaSeed","Unprocessed_Marijuana"]call drug_harvest;'],
["'Harvest Poppy'",'"as_b_PinusM1s_EP1"call drug_neardrug','[(nearestobjects [getpos player, ["as_b_PinusM1s_EP1"], 5] select 0),"HeroinSeed","Unprocessed_Heroin"]call drug_harvest;'],
["'Harvest Cocaine'",'"as_b_PistaciaL1s_EP1"call drug_neardrug','[(nearestobjects [getpos player, ["as_b_PistaciaL1s_EP1"], 5] select 0),"CocaineSeed","Unprocessed_Cocaine"]call drug_harvest;'],
["'Enable License Plate'",'!ar_plates','[]spawn plates_plate'],
["'Disable License Plate'",'ar_plates','[]spawn plates_plate']
];

INV_apps = [
["app_warrants","sfg_textures\ipad\WARRANTS.PAA","[0,1,2,[""coplog""]] execVM 'scripts\maindialogs.sqf';"],
["app_civilian","sfg_textures\ipad\CIVILIAN.PAA","[0,0,0,[""playerlist""]] execVM 'scripts\maindialogs.sqf';"],
["app_save","sfg_textures\ipad\SAVE.PAA","[]spawn StatSave_Save;"],
["app_oil","sfg_textures\ipad\OIL.PAA","[0,0,0,[""oilswag""]] execVM 'scripts\maindialogs.sqf'"],
["app_dmv","sfg_textures\ipad\DMV.PAA","[0,0,0,[""licswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_laws","sfg_textures\ipad\LAWS.PAA","[0,0,0,[""lawswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_gangs","sfg_textures\ipad\GANGS.PAA","closeDialog 0;call gang_open"],
["app_stockmarket","sfg_textures\ipad\stockmarket.PAA","[0,0,0,[""fundsswag""]] execVM ""scripts\maindialogs.sqf"";"],
["app_store","sfg_textures\ipad\stockmarket.PAA","[AppStorenum]call shops_openshop; "],
["app_phone","sfg_textures\ipad\PHONE.PAA","systemChat 'W.I.P';"],
["app_settings","sfg_textures\ipad\SETTINGS.PAA","createDialog 'AR_KeybindingsMenu';"]
];

AppStoreArray = 
[
"app_phone",
"app_warrants",
"app_civilian",
"app_oil",
"app_dmv",
"app_laws",
"app_gangs",
"app_stockmarket",
"app_save"
];

dtkgarageshop = 
[
"DTK_Upgrades",
"DTK_LableBreak",
"dtk_Speed1",
"dtk_Speed2",
"dtk_Speed3",
"dtk_Speed4",
"dtk_Speed5",
"dtk_Speed6",
"DTK_Maintenance",
"DTK_LableBreak",
"dtk_repair",
"dtk_refual",
"dtk_fullmaintenance",
"dtk_changeplatenumbers"
];
