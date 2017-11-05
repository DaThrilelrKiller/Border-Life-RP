SpawnPoints = [["Police_spawn_1","iscop"],["Police_spawn_3","Undercover_id"],["Police_spawn_4","Lt_id or Cpt_id or Chief_id"],["Police_spawn_5","SWAT_id"],["Police_spawn_7","Cpl_id or Sgt_id"],["Police_spawn_8","K9_id"],["Police_spawn_9","PDAviation_id"],["Police_spawn_10","DOC_id"],["Police_spawn_11","HWP_id"],["Police_spawn_12","CoastGuard_id"]];

iscop			= true;
isciv	      	= false;		
isamedic       	= false;
ar_sidename = "Police Officer";

INV_apps = [
["app_civilian","sfg_textures\ipad\CIVILIAN.PAA","[0,0,0,[""playerlist""]] execVM 'scripts\maindialogs.sqf';"],
["app_save","sfg_textures\ipad\SAVE.PAA","[]spawn StatSave_Save;"],
["app_oil","sfg_textures\ipad\OIL.PAA","[0,0,0,[""oilswag""]] execVM 'scripts\maindialogs.sqf'"],
["app_dmv","sfg_textures\ipad\DMV.PAA","[0,0,0,[""licswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_laws","sfg_textures\ipad\LAWS.PAA","[0,0,0,[""lawswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_gangs","sfg_textures\ipad\GANGS.PAA","[0,0,0,[""gangsswag""]] execVM 'scripts\maindialogs.sqf';"],
["app_stockmarket","sfg_textures\ipad\stockmarket.PAA","[0,0,0,[""fundsswag""]] execVM ""scripts\maindialogs.sqf"";"],
["app_computer","sfg_textures\ipad\Computer.PAA","if(vehicle player != player)then{call cdb_open}else {systemChat 'You Must Be In A Vehicle To Access Your ECPD Computer!';};"],
["app_store","sfg_textures\ipad\stockmarket.PAA"," [AppStorenum]call shops_openshop; "],
["app_phone","sfg_textures\ipad\PHONE.PAA","systemChat 'W.I.P';"],
["app_settings","sfg_textures\ipad\SETTINGS.PAA","createDialog 'AR_KeybindingsMenu';"]
];

AppStoreArray = 
[
"app_phone",
"app_civilian",
"app_oil",
"app_dmv",
"app_laws",
"app_gangs",
"app_stockmarket",
"app_computer",
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
"dtk_vicsiren1",
"dtk_vicsiren2",
"dtk_vicsiren3",
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
"dtk_Gyelp",
"DTK_Maintenance",
"DTK_LableBreak",
"dtk_repair",
"dtk_refual",
"dtk_fullmaintenance",
"dtk_changeplatenumbers"
];



USBW_Interactions = [
["'Give Ticket'",'isPlayer cursorTarget && {player distance cursorTarget < 5}','["request",cursorTarget]call ticket_ticket;'],
["'Enable License Plate'",'!ar_plates','[]spawn plates_plate'],
["'Disable License Plate'",'ar_plates','[]spawn plates_plate']
];

