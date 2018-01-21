SpawnPoints =[["ems_spawn_1","true"],["ems_spawn_2","true"],["ems_spawn_4","EMSAirUnit_id"]];

dtk_civ         	= false;						
iscop          	= false;	
isamedic       	= true;	
dtk_sidename = "Emergency Medical Technician";

INV_apps = [
["app_warrants","sfg_textures\ipad\WARRANTS.PAA","[0,1,2,[""coplog""]] execVM 'scripts\maindialogs.sqf';"],
["app_civilian","sfg_textures\ipad\CIVILIAN.PAA","[0,0,0,[""playerlist""]] execVM 'scripts\maindialogs.sqf';"],
["app_save","sfg_textures\ipad\SAVE.PAA","[]spawn StatSave_Save;"],
["app_oil","sfg_textures\ipad\OIL.PAA","[0,0,0,[""oilswag""]] execVM 'scripts\maindialogs.sqf'"],
["app_dmv","sfg_textures\ipad\DMV.PAA","[player]call licenses_check"],
["app_laws","sfg_textures\ipad\LAWS.PAA","[0,0,0,[""lawswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_gangs","sfg_textures\ipad\GANGS.PAA","closeDialog 0;call gang_open"],
["app_stockmarket","sfg_textures\ipad\stockmarket.PAA","[0,0,0,[""fundsswag""]] execVM ""scripts\maindialogs.sqf"";"],
["app_store","sfg_textures\ipad\stockmarket.PAA","[(BuildingCollapesLogic call shops_index)]call shops_openshop; "],
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
"DTK_LableSirens",
"DTK_LableBreak",
"dtk_kmesiren1",
"dtk_kmesiren2",
"dtk_kmesiren3",
"dtk_NewSiren1",
"dtk_NewSiren2",
"dtk_NewSiren3",
"dtk_Galls",
"dtk_Gyelp",
"dtk_Wail",
"dtk_Yelp",
"dtk_Phasser",
"dtk_HighWail",
"dtk_HyperWail",
"dtk_HyperYelp",
"dtk_LowPhasser",
"dtk_PowerCall",
"dtk_RumblerWail",
"dtk_RumblerYelp",
"dtk_SVPWail",
"dtk_SVPYelp",
"dtk_SVPPhaser",
"DTK_Maintenance",
"DTK_LableBreak",
"dtk_repair",
"dtk_refual",
"dtk_fullmaintenance",
"dtk_changeplatenumbers"
];
