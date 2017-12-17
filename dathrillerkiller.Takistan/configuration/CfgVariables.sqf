
INV_drogenusesperre = 0;
INV_drogen_usesperre = FALSE;
INV_DrogenCounter = 0;

/*Main*/
keyblock		 = false;
pickingup   		 = false;
halfwaythereallfiredup = false;
shopusearray = [];

AR_playerString = str player;

ar_doggy = false;

/*Invars*/
INV_shortcuts           = true;

/*Fishing Arrays*/
INV_FarmItemArray =
[
[[["lsdfield",30]],"Unprocessed_lsd",15,4,["Man"]],
[[["lsdfield_1",30]],"Unprocessed_lsd",15,4,["Man"]],
[[["DiamondArea",20]],"Diamond rock",15,1,["Man"]],
[[["farmarea2",90]],"getreide",20,10,["tractor","oldtruc2","oldtruc2a"]],
[[["farmarea3",90]],"getreide",20,10,["tractor","oldtruc2","oldtruc2a"]],
[[["sandarea",70]],"sand",15,5,["Man"]],
[[["sandarea1",70]],"sand",15,5,["Man"]],
[[["apfelfeld1",50]],"apple",10,5,["Man"]]
];
Miningarray =
[
[["IronArea",30],"iron",12],
[["GoldArea",15],"gold",12],
[["GoldArea1",15],"gold",12],
[["CopperArea",30],"copper",12],
[["CopperArea1",30],"copper",12]
];

/*bank Vars*/
maxinsafe                = 300000;
rblock			 = 0;
stolencash		 = 0;
Maxbankrobpercentlost    = 0.1; 
robenable              	 = true;     
drugsellarray		 = [mdrugsell,cdrugsell,ldrugsell,hdrugsell,methsell];
/*Lottery*/
playing_lotto = 0;

LottoArray = 
[
["lotto1", 	"Penny Saver Scratch Card",	 		100,		1000],							
["lotto2", 	"Money Lover Scratch Card",		    2500,       15000],	
["lotto3", 	"Big Bucks Scratch Card",         	10000,  	70000],								
["lotto4",	"Fortune Scratch Card",			25000, 	    175000]
];

LottoFlags = 									
[
[fuel2,["lotto1", "lotto2", "lotto3", "lotto4"]],
[fuel4,["lotto1", "lotto2", "lotto3", "lotto4"]],
[fuel5,["lotto1", "lotto2", "lotto3", "lotto4"]],
[fuel7,["lotto1", "lotto2", "lotto3", "lotto4"]],
[fuel8,["lotto1", "lotto2", "lotto3", "lotto4"]]
];

LottoLocations = [fuel2,fuel4,fuel5,fuel7,fuel8];

/*WorkPlaceSettings*/
workplacejob_taxi_zielarray	 = [[1804.32,2715.09,0],[2043.42,946.662,0],[2022.1,953.99,0],[3595.96,4307.39,0],[4666.67,2323.52,0],[2718.37,2145.82,0],[2441.71,3784.34,0],[417.767,1482.81,0],[1087.7,1757.15,0],[2644.26,2376.06,0],[2800.21,3270.98,0],[3946.61,3428.08,0],[2849.15,2260.93,0],[1661.34,4694.55,0],[3004.8,4287.48,0],[2803.52,3419.95,0],[1271.58,4152.71,0],[2215.47,1991.01,0],[4180.43,3709.18,0],[3946.59,4292.07,0],[1424.08,4134.33,0],[1116.87,3686.94,0],[1255.67,3877.35,0]];
workplacejob_taxi_sperrzeit	 = 0.01;																						
workplacejob_taxi_multiplikator  = 4;																						
workplacejob_taxi_maxmoney       = 10000;
taximaxdistance			 = 7000;
taximindistance			 = 2000;
workplacejob_assassin_break   = 10;
workplacejob_assassion_failed = false;
workplacejob_hostage_break   = 5;
workplacejob_hostage_failed = false;


/*Other*/
lockpicking = false;
isstunned                = false;
Antwort                  = 0;
CivTimeInPrison          = 0;
CopLog                   = [];
isCrackingSafe			 = 0;
safeCrackFailed			 = 0;
StunActiveTime           = 0;
StunTimePerHit		 = 15;
MaxStunTime		 = 30;
bc_baitcars = [];
stolenfromtime 		 = 900;
stolenfromtimeractive	 = false;
Safecracked1 = False;
pmissionactive = false;
patrolwaittime = false;
patrolmoneyperkm = 4.0;
pitavailable = true;
wantedamountforbank = 100000;
oilsellpricedec          = 30;
oilbaseprice		 = 15000;
working=false;
coppatrolarray  = [[4045.69,2284.16,0],[3661.66,4261.21,0],[4169.17,3648.72,0],[2918,3514.07,0],[1139.32,4564.22,0],[1112.11,3782.8,0],[3025.85,4435.61,0],[2190.9,4489.62,0],[2429.91,4768.43,0],[904.459,1176.82,0],[1578.37,4739.66,0],[1972.94,4290.42,0],[1523.08,4389.92,0],[2570.85,3779.43,0],[2846.55,1488.14,0],[1483.26,2539.71,0],[727.739,2934.53,0],[1563.24,4871.82,0],[2520.61,4665.69,0]];
local_arrest             = 0;
SigningUpForDebitCard	 = false;
slave_cost               = 40000;
dog_cost                 = 1000;
HideoutLocationArray     = [];
publichideoutarray       = [];
doingSomething            = false;
nonlethalweapons	 = ["","Binocular", "NVGoggles", "ItemMap", "ItemCompass", "ItemRadio", "ItemWatch", "ItemGPS","TFAR_Ruck_Base", "tf_rt1523g", "tf_anprc155", "tf_mr3000", "tf_anarc210", "tf_anarc164", "tf_mr6000l", "tf_gm380", "tf_microdagr", "tf_r55", "tf_pd785", "tf_dtr650", "tf_anprc152", "tf_anprc148jem", "tf_fadak", "tf_anprc154", "tf_rf7800str", "tf_pnr1000a"];

Cararray = [ "440cuda","monaco","roadrunner","roadrunner2","civic","CHEVROLET_CAMARO_SS_396","chevrolet_chevelle","cuda","hemicuda","cd71hm","challenger","barcuda","fury","FORD_MUSTANG_SHELBY_COBRA","FORD_MUSTANG_SHELBY_COBRA1","FORD_MUSTANG_SHELBY_COBRA2","FORD_MUSTANG_SHELBY_COBRA3", "cl_charger","cl_charger_black","il_charger_blue","il_charger_black","il_charger_red","il_charger_orange","MAZDA_RX_7","MAZDA_RX_71","MAZDA_RX_72","MAZDA_RX_73","MAZDA_RX_75","MAZDA_RX_74","MAZDA_MAZDASPEED_3", "CHRYSLER_300","RENAULT_CLIO_SPORT_V6","SUBARU_IMPREZA_WRX_STI_AWD","SUBARU_IMPREZA_STI_AWD","FIAT_PUNTO","ALFA_ROMEO_BRERA","GLT_M300_LT","GLT_M300_ST","MustangGTRyellow_MLOD","Convertible_MLOD","CADILLAC_CTS", "CADILLAC_CTS1","CADILLAC_CTS2","CADILLAC_CTS3","FORD_SHELBY_GT","FORD_GT","CHRYSLER_W_limmo","BMW_M3_RALLY","BMW_M6","BMW_M3_GTR","BMW_M3","BMW_135I","CORVETTE_Z06","INFINITI_G35","MERCEDES_BENZ_CLK_500","MERCEDES_BENZ_SL_65_AMG","RENAULT_CLIO_SPORT_V6", "CL_PORSCHE_997","CL_LAMBORGHINI_GT3","KOENIGSEGG_CCX","KOENIGSEGG_CCX1","KOENIGSEGG_CCX2","KOENIGSEGG_CCX3","MCLAREN_F1","PORSCHE_997_GT3_RSR","PORSCHE_911_TURBO","PORSCHE_911_GT3_RS","LAMBORGHINI_MURCIELAGO","LAMBORGHINI_REVENTON","LAMBORGHINI_GALLARDO","MASERATI_MC12","JAGUAR_XK","BUGATTI_VEYRON","AUDI_TT_QUATTRO_S_LINE","AUDI_FSI_LE_MANS","ASTON_MARTIN_DBR9","ASTON_MARTIN_DB9","PAGANI_ZONDA_F", "NISSAN_GTR_SPECV","NISSAN_GTR_SPECV1","NISSAN_GTR_SPECV2","NISSAN_GTR_SPECV3","NISSAN_350Z","NISSAN_370Z","NISSAN_370Z1","NISSAN_370Z2","NISSAN_370Z3","NISSAN_370Z4","NISSAN_SKYLINE_GT_R_Z","NISSAN_SKYLINE_GT_R_Z1","NISSAN_SKYLINE_GT_R_Z2","NISSAN_SKYLINE_GT_R_Z3", "il_charger_pd","ilpd_charger_black","ilpd_charger_white","il_swatuc","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","CHRYSLER_300_CLPD","350z_red","350z_kiwi","350z_black","350z_silver","350z_green","350z_blue","350z_gold","350z_white","350z_pink","350z_mod","350z_ruben","350z_v","350z_yellow", "taxi","crown_white","crown_black","crown_yellow","crown_brown","crown_red","crown_grey","crown_blue","patrol","patrol_pb","patrol_np","patrol_slick","sheriff","whiteuc","blackuc","whited","greyd","whited","blackd","tcg_taurus_security","tcg_taurus_taxi", "tcg_taurus_pb_2","tcg_taurus","tcg_taurus_wopb","tcg_taurus_shpb","tcg_taurus_sh","tcg_taurus_uc","tcg_taurus_civ1","tcg_taurus_civ2","240GD","tcg_taurus_civ3","tcg_taurus_civ4","tcg_taurus_civ5","tcg_taurus_civ6","tcg_suburban_uc_black","tcg_suburban_uc_grey","tcg_suburban_uc_white", "tcg_suburban_red","tcg_suburban_yellow","tcg_suburban_grey","tcg_suburban_white","tcg_suburban_green","suburban_blue","suburban_black","suburban_maroon","suburban_sandstone","suburban_grey","suburban_white","suburban_fd","suburban_pd","suburban_pd_k9","suburban_pd_stealth","suburban_pd_black","suburban_pd_sheriff","f350","f350_blue","f350_pink","f350_white","f350_black","monaco","monaco_grey","monaco_blue","monaco_white","monaco_green", "monaco_red","ram3500","ram3500_grey","ram3500_blue","ram3500_yellow","ram3500_white","sierra","sierra_grey","sierra_blue","sierra_yellow","sierra_pink","tahoe_grey","tahoe_darkblue","tahoe_blue","tahoe_yellow","tahoe_white","tahoe_green","tahoe_black","tahoe_orange","tahoe_pink","tahoe_darkblue_cb","tahoe_grey_cb","tahoe_blue_cb","tahoe_yellow_cb","tahoe_pink_cb","tahoe_white_cb","tahoe_green_cb","tahoe_black_cb","tahoe_orange_cb","il_f350_brush","gmc_ambulance","MERCEDES_BENZ_SLR","PONTIAC_GTO_6","oldtruck","m5_red","m5_grey","m5_blue","m5_c_green","m5_c_black","m5_c_white","h1","h1_grey","h1_blue","h1_white","h1_green","rangerover","rangerover_grey","rangerover_blue","rangeroverc_red","Cherokee","Cherokee_grey","Cherokee_blue","s331","s331_grey","s331_blue","s331_yellow","transit","transit_grey","transit_blue","transit_yellow","m5_pd_traffic","clbuggy","il_fordcv__uc_taxi","monaco","oltruc3","NISSAN_SKYLINE_V_SPEC","m5_c_bgreen","m5_c_dblue","m5_c_lblue","m5_c_orange","m5_c_yellow"];
civclassarray =[ "TK_CIV_Takistani01_EP1", "TK_CIV_Takistani02_EP1", "TK_CIV_Takistani03_EP1", "TK_CIV_Takistani04_EP1", "TK_CIV_Takistani05_EP1", "TK_CIV_Takistani06_EP1", "TK_CIV_Woman01_EP1", "TK_CIV_Woman02_EP1", "TK_CIV_Woman03_EP1", "TK_CIV_Worker01_EP1", "TK_CIV_Worker02_EP1", "Citizen2_EP1", "Citizen3_EP1", "CIV_EuroMan01_EP1", "CIV_EuroMan02_EP1", "Dr_Hladik_EP1", "Functionary1_EP1", "Functionary2_EP1", "Haris_Press_EP1", "Profiteer2_EP1", "TK_Soldier_Sniper_EP1", "US_Soldier_Pilot_EP1", "Doctor", "Rocker2", "Soldier_TL_PMC", "Reynolds_PMC", "Soldier_Pilot_PMC", "Soldier_M4A3_PMC", "Ry_PMC", "Dixon_PMC" ];
INV_Tragfaehigkeit	= 60;
processscriptrunning = 0;
