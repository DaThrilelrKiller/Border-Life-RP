if(dtk_server)then
{
INV_itemstocks =
[
-1
];
 
publicvariable "INV_itemstocks";
};
 
INV_itemmaxstocks =
[
-1
];
 

_emptyshop = [];

_fs = ["kanister","Fuelline","reparaturkit","tcgmp","doshd","gdar","bjerk","wulf"];

_is = ["apple","straw","getreide","blowfish","mackerel","herring","perch","trout","walleye","bass","boar","lighter"];

_cf = ["wulf","bjerk","tcgmp","doshd"];

_pub = ["beer","beer2","vodka","smirnoff","wiskey","wine","wine2"];

_ass = ["RH_m9sd","15Rnd_9x19_M9SD","RH_g17sd","RH_17Rnd_9x19_g17SD","RH_m1911sd","RH_8Rnd_45cal_m1911","RH_mk22sd","RH_8Rnd_9x19_Mksd","RH_uzisd","RH_9mm_32RND_SD_Mag","RH_mp5sd6eot_ass","30rnd_9x19_MP5SD","RH_mk12mod1sd_ass","20Rnd_556x45_Stanag","C1987_P99_black_sd","15Rnd_9x19_p99_sd","VSS_vintorez_ASS","20Rnd_9x39_SP5_VSS"];

_mgs = ["RH_mk22","RH_8Rnd_9x19_Mk","KPFS_MP2","KPFS_32Rnd_MP2","RH_muzi","RH_32rnd_9x19_Muzi","RH_uzi","RH_9mm_32RND_Mag","RH_tmpeot","30Rnd_9x19_MP5","RH_fmg9","RH_9mm_32RND_Mag","GPS","NVGoggles","CHRYSLER_B_limmo","tcg_taurus_security", "ilpd_ags_cvpi","chrysler_w_limmo","audi_a8_limo"];

_es = ["Binocular","GPS","NVGoggles","hideout","fishingpole","bunnyhop","drill"];

_cs1 = ["MMT_USMC","Volha_1_TK_CIV_EP1","S1203_TK_CIV_EP1","civic","Car_hatchback","VWGolf","Car_Sedan","SkodaBlue","Skodared","lada1","lada2","LandRover_TK_CIV_EP1","datsun1_civil_3_open","UAZ_Unarmed_TK_CIV_EP1","oldtruck","oltruc3","Tractor","pickup_pk_ins", "ladalm", "skoda", "skodagreen", "lada_base", "lada2_tk_civ_ep1", "landrover_cz_ep1", "lada1_tk_civ_ep1", "suv_pmc", "ibr_van_civ", "ibr_van_bnk", "baf_offroad_w"];

_cs2 = ["MMT_USMC","tractor","oldtruc2","oldtruc2a"];

_sc1 = ["440cuda","roadrunner","roadrunner2","CHEVROLET_CAMARO_SS_396","chevrolet_chevelle","cuda","hemicuda","cd71hm","barcuda","fury","FORD_MUSTANG_SHELBY_COBRA","FORD_MUSTANG_SHELBY_COBRA1","FORD_MUSTANG_SHELBY_COBRA2","FORD_MUSTANG_SHELBY_COBRA3","FORD_GT","monaco_black","monaco_grey","monaco_blue","monaco_white","monaco_green","monaco_red","challenger_black","challenger_grey","monaco","challenger_blue","challenger_yellow","challenger_pink","challenger_white","challenger_green","challenger_red","challenger_orange"];

_sc2 = ["DD_DOD12Charger_Black","DD_DOD12Charger_Blue","DD_DOD12Charger_DarkGreen","DD_DOD12Charger_DarkRed","DD_DOD12Charger_Green","cl_charger","cl_charger_black","MAZDA_RX_7","MAZDA_RX_71","MAZDA_RX_72","MAZDA_RX_73","MAZDA_RX_75","MAZDA_RX_74","MAZDA_MAZDASPEED_3"];

_sc3 = ["CHRYSLER_300","RENAULT_CLIO_SPORT_V6","SUBARU_IMPREZA_WRX_STI_AWD","SUBARU_IMPREZA_STI_AWD","FIAT_PUNTO","ALFA_ROMEO_BRERA","NISSAN_240SX_SE","PONTIAC_GTO_6"];

_sc4 = ["MustangGTRyellow_MLOD","Convertible_MLOD","FORD_SHELBY_GT","CORVETTE_Z06","corvette_c6r","INFINITI_G35","MERCEDES_BENZ_CLK_500","MERCEDES_BENZ_SL_65_AMG","JAGUAR_XK","CADILLAC_CTS","enzo", "bentley"];

_sc5 = ["CL_PORSCHE_997","CL_LAMBORGHINI_GT3","KOENIGSEGG_CCX","KOENIGSEGG_CCX1","KOENIGSEGG_CCX2","KOENIGSEGG_CCX3","MCLAREN_F1","MERCEDES_BENZ_SLR","PORSCHE_997_GT3_RSR","PORSCHE_911_TURBO","PORSCHE_911_GT3_RS","LAMBORGHINI_MURCIELAGO","LAMBORGHINI_REVENTON","LAMBORGHINI_GALLARDO","MASERATI_MC12","JAGUAR_XK","BUGATTI_VEYRON","AUDI_TT_QUATTRO_S_LINE","AUDI_FSI_LE_MANS","PAGANI_ZONDA_F","ASTON_MARTIN_DB9"];

_sc6 = ["NISSAN_GTR_SPECV","NISSAN_GTR_SPECV1","NISSAN_GTR_SPECV2","NISSAN_GTR_SPECV3","NISSAN_350Z","NISSAN_370Z","NISSAN_370Z1","NISSAN_370Z2","NISSAN_370Z3","NISSAN_370Z4","NISSAN_SKYLINE_GT_R_Z","NISSAN_SKYLINE_GT_R_Z1","NISSAN_SKYLINE_GT_R_Z2","NISSAN_SKYLINE_GT_R_Z3"];

_sc7 = ["350z_red","350z_kiwi","350z_black","350z_silver","350z_green","350z_blue","350z_gold","350z_white","350z_pink","350z_mod","350z_ruben","350z_v","350z_yellow"];

_sc8 = ["il_fordcv_white","il_fordcv_grey","il_fordcv_black","il_fordcv_darkblue","il_fordcv_maroon","il_fordcv_sandstone","f350_black","f350_blue","f350_pink","f350_white","f350_red"];

_sc9 = ["DD_BMWM5_Black","DD_BMWM5_Camo","DD_BMWM5_DarkGreen","DD_BMWM5_DarkRed","DD_BMWM5_Green","DD_BMWM5_Red","DD_BMWM5_UrbanCamo","DD_BMWM5_Yellow"];

_tahoe = ["tahoe_grey","tahoe_darkblue","tahoe_blue","tahoe_yellow","tahoe_white","tahoe_green","tahoe_black","tahoe_orange","tahoe_pink","tahoe_darkblue_cb","tahoe_grey_cb","tahoe_blue_cb","tahoe_yellow_cb","tahoe_pink_cb","tahoe_white_cb","tahoe_green_cb","tahoe_black_cb","tahoe_orange_cb"];

_ps = ["il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_white","tcg_suburban_red","tcg_suburban_yellow","tcg_suburban_grey","tcg_suburban_white","tcg_suburban_green","suburban_blue","suburban_black","suburban_maroon","suburban_sandstone","suburban_grey","suburban_white","sierra_black", "sierra_grey", "sierra_blue", "sierra_yellow", "sierra_pink"];

_tx = ["GLT_M300_LT","GLT_M300_ST","il_fordcv_taxi"];

_bsj = ["MMT_USMC"];
_mbs = ["tcg_hrly","tcg_hrly_coco","tcg_hrly_demon","tcg_hrly_limited","tcg_hrly_orig1","tcg_hrly_gay","tcg_hrly_metal","tcg_hrly_orig2","tcg_hrly_white","tcg_hrly_blue","tcg_hrly_red","Old_moto_TK_Civ_EP1","TT650_TK_CIV_EP1","TT650_Ins","TT650_Civ","ATV_CZ_EP1"];

_qbs = ["cl_quadcarbonlight","cl_quaddescammo","cl_green","cl_quadred","cl_quadsaftysteel","cl_quadyellow","cl_blue2","cl_chark","cl_dirtyred"];

_qbss = ["tcg_aprilia_blue","tcg_aprilia_yellow","tcg_aprilia_white","tcg_aprilia_green","tcg_aprilia_red","tcg_aprilia_black","tcg_aprilia_black_2","tcg_aprilia_blue_2","tcg_aprilia_blue_4","tcg_aprilia_blue_5","tcg_aprilia_cyan","tcg_aprilia_orange","tcg_aprilia_red_1","tcg_aprilia_red_2","tcg_aprilia_white_2","tcg_aprilia_yellow_2","tcg_aprilia_green_3"];

_ts = ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr","Ural_TK_CIV_EP1","V3S_Open_TK_CIV_EP1","V3S_TK_EP1","UralOpen_CDF","KamazOpen","Ural_CDF","schoolbus","Ikarus_TK_CIV_EP1","Ikarus","v3s_civ", "uralcivil", "uralcivil2", "uralrepair_cdf", "uralrefuel_cdf", "uralreammo_cdf","roadcone"];

_sts = [
"raptor_black",
"raptor_grey",
"raptor_blue",
"raptor_yellow",
"raptor_pink",
"raptor_white",
"raptor_green",
"raptor_red",
"raptor_orange",
"Cherokee_black",
"Cherokee_grey",
"Cherokee_blue",
"Cherokee_yellow",
"Cherokee_pink",
"Cherokee_white",
"Cherokee_green",
"Cherokee_red",
"Cherokee_orange",
"rangerover_black",
"rangerover_blue",
"rangerover_yellow",
"rangerover_pink",
"rangerover_white",
"rangerover_green",
"rangerover_red",
"rangerover_orange",
"s331_black",
"s331_grey",
"s331_blue",
"s331_yellow",
"s331_pink",
"s331_white",
"s331_green",
"s331_red",
"s331_orange",
"s331c_white",
"s331c_red",
"s331c_grey",
"h1_black",
"h1_grey",
"h1_blue",
"h1_yellow",
"h1_pink",
"h1_white",
"h1_green",
"h1_red",
"h1_orange",
"h1c_black",
"h1c_white",
"h1c_red",
"h1c_grey",
"rangeroverc_black",
"rangeroverc_white",
"rangeroverc_red",
"rangeroverc_grey",
"s331c_black",
"transit_black",
"transit_grey",
"transit_blue",
"transit_yellow",
"transit_pink",
"transit_white",
"transit_green",
"transit_red",
"transit_orange"
];
 

_as = ["V3S_Refuel_TK_GUE_EP1","V3S_Repair_TK_GUE_EP1","An2_1_TK_CIV_EP1","An2_2_TK_CIV_EP1","USEC_MAULE_M7_STD","gnt_piperwii","GNT_C185F","GNT_C185E","GNT_C185R","GNT_C185C","GNT_C185"];

_assa = ["kyo_ultralight","AH6X_EP1","KA137_PMC","CSJ_Gyroc","Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","Gazelle","Gazelle1","Gazelle3","tcg_bell206_3","tcg_bell206_4","tcg_bell206_1","tcg_bell206_2","tcg_bell206_5","tcg_bell206", "MH6J_EP1"];

_asc = ["can_c130","airnz_C130","luf_c130","qantas_C130","A320MPA","globemaster_c17_Mississipi","globemaster_c17_701"];

_sb = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3"];

_bs = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3","cl_trawler_fishing_boat","cl_sport_fishing_boat","Fishing_boat","cl_container_boat","cl_inflatable","PBX","Zodiac","Smallboat_1","Smallboat_2","lcu","big_boatsn","pook_kayak1_hunt","pook_tugboat1","pook_freighter1"];

_js = ["Diamond"];

_ins = ["bankversicherung"];

_rs = ["gold","iron","copper","diamond rock","Sand"];

_gds = ["bread","straw"];

_gds1 = ["reparaturkit","horn_cuca","horn_dukes","horn_ita","horn_old","horn_reg","horn_truck"];

_gds3 = [];

_os = ["OilBarrel","Oil"];

_ws = ["Whale"];

_dsc = ["cocaine","cocaineseed"];

_dsm = ["marijuana","marijuanaseed"];

_dsl = ["lsd"];

_dsh = ["heroin","heroinseed"];

_psc = ["medikit","pharm","GymMem1","GymMem2","cl_wheelchair"];

_hsc = ["eyes","brain","liver","heart","kidney","bones","teeth"];

_msc = ["meth","GymMem3","GymMem4"];
 

_copbasic =
[
"spikestrip",
"Itembag",
"Donut",
"medikit",
"Binocular",
"NVGoggles",
"GPS",
"reparaturkit"
];

_copuntrained =
[
"x26",
"x26_Mag",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"RH_m9",
"Rnd_9x19_M9",
"C_DD_FOR06CV_P_P"
];
 

_coppo1 =
[
"x26",
"x26_Mag",
"RH_mp5k",
"30rnd_9x19_MP5",
"C_DD_FOR06CV_P_P"
];
 

_coppo2 =
[
"x26",
"x26_Mag",
"LEXX_glock17_EP1_BLACK_pd",
"Rnd_9x19_glock17",
"RH_m16a2aim_pd",
"30Rnd_556x45_Stanag",
"C_DD_FOR13Taurus_P_P"
];
 

_coppo3 =
[
"x26",
"x26_Mag",
"LEXX_glock17_EP1_BLACK_pd",
"Rnd_9x19_glock17",
"RH_M4a1eotech_swat",
"RH_M4a1aim_swat",
"30Rnd_556x45_Stanag",
"C_DD_DOD06charger_P_P"
];
 

_copcpl =
[
"x26",
"x26_Mag",
"LEXX_glock17_EP1_BLACK_pd",
"Rnd_9x19_glock17",
"RH_m4meotech_cmd",
"RH_m4maim_cmd",
"30Rnd_556x45_Stanag",
"C_DD_DOD12Charger_P_P",
"C_DD_FOR_13Taurus_U_P",
"C_DD_FOR16Explorer_P_P"
];
 

_copsgt =
[
"x26",
"x26_Mag",
"LEXX_glock17_EP1_BLACK_pd",
"Rnd_9x19_glock17",
"RH_m4maim_cmd",
"RH_m4macog_cmd",
"30Rnd_556x45_Stanag",
"C_DD_DOD12Charger_U_P",
"C_DD_FOR16Explorer_U_P"
"C_DD_CHE15Suburban_P_P",
"C_DD_CHE08Tahoe_P_P"
];
 

_coplt =
[
"x26",
"x26_Mag",
"LEXX_glock17_EP1_BLACK_pd",
"Rnd_9x19_glock17",
"RH_Mk18d",
"RH_Mk18deot",
"30Rnd_556x45_Stanag",
"Bait_Kit",
"C_DD_CHE15Suburban_U_P",
"bc_towtruck"
];
 

_copcpt =
[
"x26",
"x26_Mag",
"LEXX_glock17_EP1_BLACK_pd",
"Rnd_9x19_glock17",
"RH_Mk18dacog",
"RH_Mk18daim",
"30Rnd_556x45_Stanag",
"Bait_Kit",
"C_DD_DOD15Charger_P_P",
"C_DD_CHE10Impala_P_P",
"C_DD_CHE08Tahoe_ECPDCMD",
"bc_towtruck"
];
 
 
_copmajor =
[
"x26",
"x26_Mag",
"RH_g19t",
"RH_Mk18daim",
"RH_mk14ebrgc",
"30Rnd_556x45_Stanag",
"Stinger_swat",
"Stinger_mag",
"SWAT",
"Rnd_9x19_M9",
"Bait_Kit",
"C_DD_DOD15Charger_U_P",
"C_DD_CHE10Impala_U_P",
"bc_towtruck"
];
 

_copchief =
[
"x26",
"x26_Mag",
"RH_g19t",
"RH_m4maim_cmd",
"RH_m4meotech_cmd",
"RH_m4macog_cmd",
"RH_Mk18daim",
"RH_mk14ebrgc",
"30Rnd_556x45_Stanag",
"Stinger_swat",
"Stinger_mag",
"SWAT",
"Rnd_9x19_M9",
"jailbus",
"Bait_Kit",
"C_DD_DOD15Charger_U_P",
"C_DD_CHE10Impala_U_P",
"bc_towtruck",
"tcg_hrlycop"
];
 

_copk9 =
[
"x26",
"x26_Mag",
"RH_M4aim_k9",
"RH_M4eotech_k9",
"RH_M4acog_k9",
"30Rnd_556x45_Stanag",
"RH_MK12mod1_k9",
"20Rnd_556x45_Stanag_k9",
"C_DD_CHE08Tahoe_P_K9",
"C_DD_DOD12Charger_P_P_K9",
"C_DD_FOR06CV_P_K9"
];
 

_copair =
[
"tcg_police_bell206",
"tcg_police_bell206_nofloat",
"OH58g",
"GazelleD",
"MH6J_EP1"
];
 

_copairweapon =
[
"RH_m9",
"Rnd_9x19_M9",
"RH_PDR_av",
"30Rnd_556x45_Stanag",
"RH_umpaim_av",
"RH_45ACP_25RND_Mag"
];
 

_copswat1 =
[
"RH_Mk18deot",
"RH_Mk18daim",
"RH_Mk18dacog",
"30Rnd_556x45_Stanag_swat",
"SmokeShell",
"LEXX_glock17_EP1_BLACK_pd",
"Rnd_9x19_glock17"
];


_copswat2 =
[
"BAF_LRR_scoped_swat",
"5Rnd_86x70_L115A1",
"RH_Mk18dsdacog",
"RH_mk14tacog",
"RH_mk14ebrgc",
"30Rnd_556x45_Stanag_swat",
"20Rnd_762x51_DMR",
"SmokeShell",
"RH_g17sd",
"RH_17Rnd_9x19_g17SD",
"LEXX_glock17_EP1_BLACK_pd",
"Rnd_9x19_glock17"
];


_copswat3 =
[
"RH_Mk18dglacog",
"30Rnd_556x45_Stanag_swat",
"1Rnd_Smoke_M203",
"SMAW",
"Stinger_swat",
"SMAW_HEAA",
"Stinger_mag",
"M32_EP1",
"6Rnd_Smoke_M203",
"SWAT",
"Rnd_9x19_M9",
"x26",
"x26_Mag",
"tcg_remington"
];

_copswat4 =
[
"RH_Mk18d",
"RH_Mk18deot",
"RH_Mk18daim",
"30Rnd_556x45_Stanag_swat",
"SmokeShell",
"LEXX_glock17_EP1_BLACK_pd",
"Rnd_9x19_glock17"
];


_copswatvehicle =
[
"C_DD_CHE08Tahoe_U_CIRU",
"C_DD_CHE15Suburban_U_CIRU",
"C_DD_DOD12Charger_U_CIRU",
"ilf350swat",
"suburban_swat",
"il_bearcat"
];


_ciruairs =
[
"MH6J_EP1",
"yup_MH60J"
];
 

_copcoastguard =
[
"JFH_USCG_ZODIAC",
"JFH_USCG_RHIB",
"tcg_wrun"
];


_copcoastguard2 =
[
"GNTFSF"
];


_copcoastguardair =
[
"HH65C",
"yup_MH60J"
];


_undercover =
[
"DTK_LableVehicles",
"DTK_LableBreak",
"C_DD_CHE15Suburban_U_P_DarkRed",
"C_DD_CHE15Suburban_U_P_DarkBlue",
"C_DD_DOD12Charger_U_P_DarkBlue",
"C_DD_DOD12Charger_U_P_DarkRed",
"C_DD_DOD12Charger_U_P_Red",
"C_DD_FOR16Explorer_U_P_Black",
"tahoe_uc_1_white",
"tahoe_uc_1_black",
"tcg_taurus_uc",
"ilpd_unmarked_white",
"ilpd_unmarked_black",
"tahoe_uc_1_grey",
"tahoe_uc_1_blue",
"tahoe_uc_1_maroon",
"ilpd_scu_grey",
"ilpd_scu_darkblue",
"ilpd_scu_maroon",
"raptor_black",
"Cherokee_black",
"cl_wrangler_black",
"f350_black",
"h1_black",
"DTK_LableEquipment",
"DTK_LableBreak",
"RH_M4aim_uc",
"RH_M4eotech_uc",
"RH_M4acog_uc",
"30Rnd_556x45_Stanag",
"AK_47_S_uc",
"AK_47_M_uc",
"30Rnd_762x39_AK47",
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"reparaturkit",
"Itembag",
"Donut",
"medikit",
"Binocular",
"NVGoggles",
"GPS",
"Bait_Kit",
"DTK_LableOther",
"DTK_LableBreak",
"Functionary1",
"Functionary2",
"Worker2",
"Woodlander3",
"Doctor",
"Rocker2",
"TK_CIV_Takistani01_EP1",
"TK_CIV_Takistani02_EP1",
"TK_CIV_Takistani03_EP1",
"TK_CIV_Worker01_EP1",
"TK_CIV_Worker02_EP1"
];


_copdoc =
[
"vil_lublin_AMBU",
"jailbus",
"C_DD_FOR06CV_DOC",
"C_DD_FOR16Explorer_DOC",
"bc_towtruck",
"M1014_pd",
"8Rnd_B_Beneli_Pellets",
"SWAT",
"Rnd_9x19_M9",
"x26",
"x26_Mag",
"RH_M4sbracog_cmd",
"RH_M4sbreotech_cmd",
"RH_m4sbraim_cmd",
"30Rnd_556x45_Stanag",
"Binocular",
"NVGoggles"
]; 


_hwpshop =
[
"C_DD_FOR06CV_HWP",
"C_DD_DOD12Charger_HWP",
"C_DD_DOD12Charger_U_HWP",
"C_DD_CHE08Tahoe_HWP"
];


_rtshop =
[
"bus",
"clbuggy",
"Scania_420",
"bc_semi_sblk",
"bc_semi_sblu",
"bc_semi_sdblue",
"bc_semi_sylw",
"bc_semi_sdgry",
"bc_semi_sorng",
"semitrailer"
];


_stko1 =
[
"tcg_hrly",
"tcg_hrly_coco",
"tcg_hrly_coco",
"tcg_hrly_demon",
"tcg_hrly_limited",
"tcg_hrly_orig1",
"tcg_hrly_gay",
"tcg_hrly_metal",
"tcg_hrly_orig2",
"tcg_hrly_white",
"tcg_hrly_blue",
"tcg_hrly_red"
];


_stko2 =
[
"RH_M4aim_uc",
"RH_M4eotech_uc",
"RH_M4acog_uc",
"RH_m16a2_pd",
"AK_47_S_uc",
"RH_akm",
"RH_aks47",
"RH_aks47b",
"AK_47_S",
"RH_aks47g",
"RH_m1911old",
"RH_m9",
"RH_m9c",
"RH_g19",
"RH_g19t",
"Huntingrifle",
"RPG18",
"RH_muzi",
"30Rnd_556x45_Stanag",
"30Rnd_762x39_AK47",
"RH_8Rnd_45cal_m1911",
"Rnd_9x19_M9",
"RH_19Rnd_9x19_g18",
"5x_22_LR_17_HMR",
"RPG18_mag",
"RH_9mm_32RND_Mag"
];


_stko3 =
[
];
 
 
_pmc1 =
[
"RH_m9",
"Rnd_9x19_M9",
"RH_g19",
"RH_17Rnd_9x19_g17",
"Binocular",
"NVGoggles",
"Binocular_Vector"
];


_pmc2 =
[
"RH_m9",
"Rnd_9x19_M9",
"RH_g19",
"RH_17Rnd_9x19_g17",
"Binocular",
"NVGoggles",
"Binocular_Vector"
];


_pmc3 =
[
"RH_m9",
"Rnd_9x19_M9",
"RH_g19",
"RH_17Rnd_9x19_g17",
"Binocular",
"NVGoggles",
"Binocular_Vector"
];


_terrorshop =
[
"NVGoggles",
"safehack",
"RH_oc14",
"RH_20Rnd_9x39_SP6_mag",
"RH_rk95",
"RH_aks47",
"RH_aks47b",
"AK_47_S",
"RH_akm",
"30Rnd_762x39_AK47",
"RH_m14maf",
"20Rnd_762x51_DMR",
"RPG18",
"RPG18_mag",
"V3S_Reammo_TK_GUE_EP1"
];
 

_shady =
[
"blindfold",
"lockpick",
"ziptie",
"burgl",
"codeb",
"lighter"
];

_terror2 =
[
"RH_ar10s",
"safehack",
"RH_20Rnd_762x51_AR10",
"RH_aks47g",
"AK_107_GL_kobra",
"30Rnd_762x39_AK47",
"RH_bizonk",
"64Rnd_9x19_Bizon",
"RH_m14aim",
"20Rnd_762x51_DMR",
"RH_svdg",
"10Rnd_762x54_SVD",
"AKS_74_GOSHAWK",
"30Rnd_545x39_AK",
"FN_FAL_ANPVS4",
"donate20Rnd_762x51_FNFAL"
];

_pistol =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38",
"RH_8Rnd_9x19_p38",
"RH_tt33",
"RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_uspm",
"RH_12Rnd_45cal_usp",
"RH_usp",
"RH_15Rnd_9x19_usp",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_m93r",
"RH_20Rnd_9x19_M93",
"RH_m9c",
"Rnd_9x19_M9",
"RH_anac",
"RH_6Rnd_44_Mag",
"RH_python",
"RH_6Rnd_357_Mag",
"RH_g17",
"RH_19Rnd_9x19_g18",
"RH_m1911old",
"RH_8Rnd_45cal_m1911",
"RH_bull",
"RH_6Rnd_44_Mag",
"C1987_P99_black",
"15Rnd_9x19_p99"
];
 
_sub =
[
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];
 
_rifle =
[
"Huntingrifle",
"5x_22_LR_17_HMR",
"MBG_Compound_Bow",
"MBG_Arrow_N",
"tcg_mossberg",
"LeeEnfieldmaf",
"x_303",
"tcg_combat",
"Saiga12K",
"8Rnd_B_Saiga12_Pellets",
"8Rnd_B_Beneli_Pellets",
"KPFS_KarS",
"KPFS_10Rnd_762x39_SKS"
];
 
_gangshop_buy =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];
 
_gangshop_buy2 =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];
 
_gangshop_buy3 =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];
 
_gangshop_buy4 =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];

_M_rlrpgclothing =
[
"Functionary1",
"Functionary2",
"Worker2",
"Woodlander3",
"Doctor",
"Rocker2",
"TK_CIV_Takistani01_EP1",
"TK_CIV_Takistani02_EP1",
"TK_CIV_Takistani03_EP1",
"TK_CIV_Worker01_EP1",
"TK_CIV_Worker02_EP1"
];

_M_rlrpgclothing_1 =
[
"Soldier_TL_PMC",
"Soldier_Pilot_PMC",
"Reynolds_PMC",
"Dixon_PMC",
"Ry_PMC"
];

_M_rlrpgclothing_2 =
[
"GUE_Soldier_Sniper",
"TK_Special_Forces_EP1",
"TK_Soldier_Officer_EP1",
"TK_Soldier_EP1",
"TK_Aziz_EP1",
"TK_GUE_Soldier_5_EP1",
"TK_GUE_Soldier_AAT_EP1",
"TK_GUE_Soldier_EP1",
"TK_INS_Soldier_TL_EP1",
"TK_INS_Soldier_AA_EP1"
];

/*EMS Water Rescue*/
_WaterRescue =
[
"il_silverado_pd",
"dtk_f350",
"Fire_ATV"
];

/*Fire Air Rescue*/
_ECFRAir =
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak",
"UH60M_MEV_EP1",
"Mi17_medevac_CDF",
"ibr_as350",
"pmo_mh6me",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"NVGoggles",
"bjerk",
"GPS",
"stretcher"
];

/*Untrained*/
_td =
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak",
"il_ambulance",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"bjerk",
"GPS"
];

/*EMT*/
_td2 =
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak",
"gmc_ambulance",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"bjerk",
"GPS",
"stretcher"
];

/*Paramedic*/
_td3 =
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak",
"a2l_medsquad",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"bjerk",
"GPS",
"stretcher"
];

/*FireFighter I*/
_td4 =
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak",
"a2l_squad",
"il_f350_brush",
"firetruck",
"il_kw_tanker",
"rescue",
"laddertruck50ft",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"bjerk",
"GPS",
"stretcher",
"sheetrockhookmed",
"sheetrockhookshort",
"sheetrockhooklong",
"pikepoleshort",
"pikepolelong",
"pikepolemed",
"trashhook",
"firerake",
"fireshovel",
"firebroom"
];

/*Firefighter II*/
_td5 =
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak", 
"a2l_squad",
"il_f350_brush",
"Fire_ATV",
"a2l_kme",
"a2l_kme_res",
"laddertruck",
"a2l_brush",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"bjerk",
"GPS",
"stretcher",
"sheetrockhookmed",
"sheetrockhookshort",
"sheetrockhooklong",
"pikepoleshort",
"pikepolelong",
"pikepolemed",
"trashhook",
"firerake",
"fireshovel",
"firebroom"
];

/*Supervisor*/
_td6 =
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak",
"C_DD_CHE08Tahoe_EMSSuper",
"Fire_F350",
"C_DD_CHE08Tahoe_FDCMD",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"NVGoggles",
"bjerk",
"GPS",
"stretcher"
];

/*Command*/
_td7 =
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak",
"firetruck3",
"C_DD_CHE15Suburban_FDCMD",
"C_DD_CHE15Suburban_EMSCMD",
"C_DD_DOD16Challenger_EMSChief",
"C_DD_CHE08Tahoe_Chrissys",
"dtk_f350",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"bjerk",
"GPS",
"stretcher",
"sheetrockhookmed",
"sheetrockhookshort",
"sheetrockhooklong",
"pikepoleshort",
"pikepolelong",
"pikepolemed",
"trashhook",
"firerake",
"fireshovel",
"firebroom"
];
_rm =
[
"reparaturkit",
"kanister"
];

_ImpoundService =
[
"reparaturkit",
"kanister",
"cooter",
"dtk_towtruck",
"dtk_f350",
"ram3500tow",
"bc_towtruck",
"roadcone",
"ol_tow_silverado",
"a2l_dot_f350_utility"
];

_LummberMill = 
[
"woodaxe",
"wood",
"lumber",
"treeseed"
];

_SFGDealer = 
[
"cadillac_cts1",
"cadillac_cts2",
"cadillac_cts3",
"cl_wrangler_black",
"cl_wrangler_blue",
"cl_wrangler_brown",
"cl_wrangler_darkgreen",
"cl_wrangler_darkred",
"cl_wrangler_gray",
"cl_wrangler_green",
"cl_wrangler_orange",
"cl_wrangler_purple",
"cl_wrangler_red",
"cl_159_black",
"cl_159_blue",
"cl_159_brown",
"cl_159_darkgreen",
"cl_159_darkred",
"cl_159_gray",
"cl_159_green",
"cl_159_orange",
"cl_159_purple",
"cl_159_red",
"cl_pacer_black",
"cl_pacer_blue",
"cl_pacer_brown",
"cl_pacer_darkgreen",
"cl_pacer_darkred",
"cl_pacer_gray",
"cl_pacer_green",
"cl_pacer_orange",
"cl_pacer_purple",
"cl_pacer_red",
"cl_cygnet_black",
"cl_cygnet_blue",
"cl_cygnet_brown",
"cl_cygnet_darkgreen",
"cl_cygnet_darkred",
"cl_cygnet_gray",
"cl_cygnet_green",
"cl_cygnet_orange",
"cl_cygnet_purple",
"cl_cygnet_red",
"1971_pantera_black",
"1971_pantera_blue",
"1971_pantera_camo",
"1971_pantera_darkgreen",
"1971_pantera_darkred",
"1971_pantera_gray",
"1971_pantera_green",
"1971_pantera_orange",
"1971_pantera_purple",
"1971_pantera_red",
"cl_ram_3500_black",
"cl_ram_3500_blue",
"cl_ram_3500_brown",
"cl_ram_3500_darkgreen",
"cl_ram_3500_darkred",
"cl_ram_3500_gray",
"cl_ram_3500_green",
"cl_ram_3500_orange",
"cl_ram_3500_purple",
"cl_ram_3500_red",
"cl_f150_1_red",
"cl_f150_1_white",
"lancer_evo_x"
];


_pso1 = 
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak",
"C_DD_FOR06CV_PSO",
"C_DD_CHE10Impala_PSO",
"gmc_ambulance",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"bjerk",
"GPS",
"stretcher"
];

_pso2 = 
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak",
"C_DD_DOD12Charger_PSO",
"C_DD_FOR13Taurus_PSO",
"C_DD_CHE15Suburban_PSO",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"bjerk",
"GPS",
"stretcher"
];

_pso3 = 
[
"DTK_LableBreak",
"DTK_LableVehicles",
"DTK_LableBreak",
"C_DD_CHE08Tahoe_PSO",
"bc_towtruck",
"DTK_LableBreak",
"DTK_LableEquipment",
"DTK_LableBreak",
"bjerk",
"GPS",
"stretcher"
];

_sfgrs =
[
"RH_m4maim_cmd",
"RH_m4meotech_cmd",
"RH_m4macog_cmd",
"RH_m4sbraim_cmd",
"RH_M4sbreotech_cmd",
"RH_M4sbracog_cmd",
"RH_m16a2aim_pd",
"G36C_swat",
"RH_m16a2_pd",
"RH_umpaim_av",
"RH_kriss",
"RH_krisseot",
"RH_krissRFX",
"RH_krissaim",
"RH_45ACP_30RND_Mag",
"RH_45ACP_25RND_Mag",
"30Rnd_556x45_Stanag"
];

_sfgps =
[
];

_rattlervs =
[
"audi_a8_limo",
"bentley",
"enzo",
"a2l_axela_blue",
"a2l_suburban_black_white",
"a2l_f100_black",
"a2l_corvettezr1_black",
"a2l_transam_ws6_black",
"DD_CHE08Tahoe_Black",
"DD_CHE10Impala_Black",
"DD_CHE10Impala_Blue",
"DD_CHE10Impala_Camo",
"DD_CHE10Impala_DarkGreen",
"DD_CHE10Impala_DarkRed",
"DD_CHE10Impala_Green",
"DD_CHE10Impala_Orange",
"DD_DOD12Charger_Camo",
"DD_DOD12Charger_Orange",
"DD_DOD15Charger_Black",
"DD_DOD15Charger_Blue",
"DD_DOD15Charger_Camo",
"DD_DOD15Charger_DarkGreen",
"DD_DOD15Charger_DarkRed",
"DD_DOD15Charger_Green",
"DD_DOD15Charger_Orange",
"DD_CHE15Suburban_Black",
"DD_CHE15Suburban_Blue",
"DD_CHE15Suburban_Camo",
"DD_CHE15Suburban_DarkGreen",
"DD_CHE15Suburban_DarkRed",
"DD_CHE15Suburban_Green",
"DD_CHE15Suburban_Orange",
"DD_FOR16F150_UrbanCamo",
"DD_FOR16F150_White",
"DD_FOR16F150_Yellow",
"DD_FOR16Explorer_Blue",
"DD_FOR16Explorer_Camo",
"DD_FOR16Explorer_DarkGreen",
"DD_FOR16Explorer_DarkRed",
"DD_FOR16Explorer_Green",
"DD_FOR16Explorer_Orange"
];


_tpstore =
[
"DD_DOD15Charger_TP"
];


_terrorairlist = [];
 
INV_ItemShops = [
[specbox,"DTU Equipment",specbox,ccarspawnuc,_undercover,_undercover,true,{Undercover_id}],
[rlrpgclothingshop,"<img image='sfg_textures\tags\Clothing.paa'/> Civilian Clothing Shop",dummyobj,dummyobj,_M_rlrpgclothing,_M_rlrpgclothing,true,{isciv}],
[rlrpgclothingshop_1,"<img image='sfg_textures\tags\Clothing.paa'/> Military Surplus",dummyobj,dummyobj,_M_rlrpgclothing_1,_M_rlrpgclothing_1,true,{isciv}],
[rlrpgclothingshop_2,"<img image='sfg_textures\tags\Clothing.paa'/> Tactical Military Clothing",dummyobj,dummyobj,_M_rlrpgclothing_2,_M_rlrpgclothing_2,true,{isciv}],
[pistol,"<img image='sfg_textures\tags\pistol.paa'/> Licensed Pistol",pistol,pistol,_pistol,_pistol,true,{isciv}],
[sub,"<img image='sfg_textures\tags\submachine.paa'/> Submachine Gun",sub,sub,_sub,_sub,true,{isciv}],
[rifle,"<img image='sfg_textures\tags\Rifle.paa'/> Licensed Rifle",rifle,rifle,_rifle,_rifle,true,{isciv}],
[sfgrs,"SFG Rifle Store",sfgrs,sfgrs,_sfgrs,_sfgrs,true,{isciv}],
[sfgps,"SFG Pistol Store",sfgps,sfgps,_sfgps,_sfgps,true,{isciv}],
[rattlervs,"Rattler's Land / Air Vehicle Store",dummyobj,rattlersvsspawn,_rattlervs,_rattlervs,true,{isciv}],
[fuel2,"<img image='sfg_textures\tags\Gas pump.paa'/> Gas n Porn",dummyobj,dummyobj,_fs,_fs,true,{true}],
[fuel4,"<img image='sfg_textures\tags\Gas pump.paa'/> Gas N Pit",dummyobj,dummyobj,_fs,_fs,true,{true}],
[fuel5,"<img image='sfg_textures\tags\Gas pump.paa'/> Gas N Chips",dummyobj,dummyobj,_fs,_fs,true,{true}],
[fuel7,"<img image='sfg_textures\tags\Gas pump.paa'/> Mikes Hard Gas",dummyobj,dummyobj,_fs,_fs,true,{true}],
[fuel8,"<img image='sfg_textures\tags\Gas pump.paa'/> Gas Haus",dummyobj,dummyobj,_fs,_fs,true,{true}],
[shop1,"Food Shop",dummyobj,dummyobj,_is,_is,true,{true}],
[shop4,"Food Shop",dummyobj,dummyobj,_is,_is,true,{true}],
[bailflag,"Food and Gun Locker",dummyobj,dummyobj,_cf,_cf,true,{true}],
[pub1,"<img image='sfg_textures\tags\pub.paa'/> Fionas Pub",dummyobj,dummyobj,_pub,_pub,true,{true}],
[pub2,"<img image='sfg_textures\tags\pub.paa'/> SouthSide Pub",dummyobj,dummyobj,_pub,_pub,true,{true}],
[pub3,"<img image='sfg_textures\tags\pub.paa'/> Macks Bar",dummyobj,dummyobj,_pub,_pub,true,{true}],
[pub4,"<img image='sfg_textures\tags\pub.paa'/> Hermanns Haxe Cellar",dummyobj,dummyobj,_pub,_pub,true,{true}],
[martpub,"<img image='sfg_textures\tags\pub.paa'/> Alcohol",dummyobj,dummyobj,_pub,_pub,true,{true}],
[assassinshop,"Assassin Shop",assassinshop,dummyobj,_ass,_ass,true,{isciv}],
[mayorguns,"<img image='sfg_textures\tags\Gov.paa'/> Government Equip Shop",mayorguns,mayorcarspawn,_mgs,_mgs,true,{isciv}],
[equipbox,"<img image='sfg_textures\tags\tools.paa'/> Equipment Shop",equipbox,dummyobj,_es,_es,true,{true}],
[rMart,"Car Items",dummyobj,dummyobj,_rm,_rm,true,{true}],
[carshop1,"<img image='sfg_textures\tags\Car.paa'/> Used Cars",dummyobj,carspawn1,_cs1,_cs1,true,{isciv}],
[carshop4,"<img image='sfg_textures\tags\Car.paa'/> Used Cars",dummyobj,carspawn4,_cs1,_cs1,true,{isciv}],
[carshop2,"<img image='sfg_textures\tags\Car.paa'/> Farm Equipment",dummyobj,carspawn2,_cs2,_cs2,false,{isciv}],
[scarshop,"<img image='sfg_textures\tags\Car.paa'/> Muscle Car Shop",dummyobj,scarspawn1,_sc1,_sc1,true,{isciv}],
[scarshop2,"<img image='sfg_textures\tags\Car.paa'/> Charger and Mazda",dummyobj,scarspawn2,_sc2,_sc2,true,{isciv}],
[scarshop3,"<img image='sfg_textures\tags\Car.paa'/> Low End Sports",dummyobj,scarspawn3,_sc3,_sc3,true,{isciv}],
[scarshop4,"<img image='sfg_textures\tags\Car.paa'/> Mid Level Sports",dummyobj,scarspawn4,_sc4,_sc4,true,{isciv}],
[scarshop5,"<img image='sfg_textures\tags\Car.paa'/> High End Sports",dummyobj,scarspawn5,_sc5,_sc5,true,{isciv}],
[scarshop6,"<img image='sfg_textures\tags\Car.paa'/> Nissan Car Shop",dummyobj,scarspawn6,_sc6,_sc6,true,{isciv}],
[scarshop7,"<img image='sfg_textures\tags\Car.paa'/> 350z Car Shop",dummyobj,scarspawn7,_sc7,_sc7,true,{isciv}],
[scarshop8,"<img image='sfg_textures\tags\Car.paa'/> Ford Car Shop",dummyobj,scarspawn8,_sc8,_sc8,true,{isciv}],
[scarshop9,"<img image='sfg_textures\tags\Car.paa'/> BMW Car Shop",dummyobj,scarspawn9,_sc9,_sc9,true,{isciv}],
[tahoeshop1,"<img image='sfg_textures\tags\Car.paa'/> Tahoe Shop",dummyobj,tahoespawn1,_tahoe,_tahoe,true,{isciv}],
[pickupshop1,"<img image='sfg_textures\tags\Car.paa'/> Pickup Shop",dummyobj,pickupspawn1,_ps,_ps,true,{isciv}],
[taxishop,"<img image='sfg_textures\tags\Car.paa'/> Taxi Shop",dummyobj,taxispawn1,_tx,_tx,true,{isciv}],
[bicycleshop,"<img image='sfg_textures\tags\Bicycle.paa'/> Bicycle Shop",dummyobj,bicyclespawn,_bsj,_bsj,true,{isciv}],
[bikeshop,"<img image='sfg_textures\tags\quad.paa'/> Mikes Bike Shop",dummyobj,bikespawn,_mbs,_mbs,true,{isciv}],
[bikeshop1,"<img image='sfg_textures\tags\quad.paa'/> Quad Bike Shop",dummyobj,bikespawn1,_qbs,_qbs,true,{isciv}],
[bikeshop2,"<img image='sfg_textures\tags\quad.paa'/> Sports Bike Shop",dummyobj,bikespawn1,_qbss,_qbss,true,{isciv}],
[truckshop,"<img image='sfg_textures\tags\truck.paa'/> Truck and Bus Shop",dummyobj,truckspawn,_ts,_ts,true,{isciv}],
[struckshop,"<img image='sfg_textures\tags\Car.paa'/> Sport Truck Shop",dummyobj,struckspawn,_sts,_sts,true,{isciv}],
[airshop,"<img image='sfg_textures\tags\plane.paa'/> Airplane Shop",dummyobj,asairspawn,_as,_as,true,{isciv}],
[airshop2,"<img image='sfg_textures\tags\heli.paa'/> Chopper and Jet Shop",dummyobj,asairspawn,_assa,_assa,true,{isciv}],
[airshop3,"<img image='sfg_textures\tags\plane.paa'/> Commercial Air Shop",dummyobj,asairspawn,_asc,_asc,true,{isciv}],
[scubashop, "<img image='sfg_textures\tags\Boat.paa'/> North Boat Shop",dummyobj,bs1spawn,_bs,_bs,false,{true}],      
[boatshop2, "<img image='sfg_textures\tags\Boat.paa'/> South Boat Shop",dummyobj,boatspawn2,_bs,_bs,true,{isciv}],
[insure,"Insurance",insure,dummyobj,_ins, _emptyshop,false,{true}],
[tdoc,"<img image='sfg_textures\tags\FD.paa'/> Firefighter I Equipment",tdoc,tdocspawn,_td4,_td4,true,{FF1_id or VFD_id}],
[tdoc6sub,"<img image='sfg_textures\tags\FD.paa'/> Firefighter I Equipment",tdoc6sub,tdocspawnsub,_td4,_td4,true,{FF1_id or VFD_id}],
[tdoc2,"Untrained Equipment",tdoc2,tdocspawn,_td,_td,true,{isamedic}],
[tdoc2sub,"Untrained Equipment",tdoc2sub,tdocspawnsub,_td,_td,true,{isamedic}],
[tdoc3, "<img image='sfg_textures\tags\EMT.paa'/> EMT Equipment",tdoc3,tdocspawn,_td2,_td2,true,{EMTBasic_id}],
[tdoc3sub, "<img image='sfg_textures\tags\EMT.paa'/> EMT Equipment",tdoc3sub,tdocspawnsub,_td2,_td2,true,{EMTBasic_id}],
[tdoc4,"<img image='sfg_textures\tags\FD.paa'/>  Firefighter II Equipment",tdoc4,tdocspawn,_td5,_td5,true,{FF2_id}],
[tdoc4sub,"<img image='sfg_textures\tags\FD.paa'/>  Firefighter II Equipment",tdoc4sub,tdocspawnsub,_td5,_td5,true,{FF2_id}],
[tdoc5,"<img image='sfg_textures\tags\FD.paa'/> Fire Rescue Supervisor",tdoc5,tdocspawn,_td6,_td6,true,{EMSSupervisor_id}],
[tdoc10sub,"<img image='sfg_textures\tags\FD.paa'/> Fire Rescue Supervisor",tdoc10,tdocspawnsub,_td6,_td6,true,{EMSSupervisor_id}],
[tdoc5sub,"<img image='sfg_textures\tags\heli.paa'/> Air Rescue Equipment",tdoc5sub,tdocspawnsubair,_ECFRAir,_ECFRAir,true,{EMSAirUnit_id}],
[tdoc6,"<img image='sfg_textures\tags\EMTChief.paa'/> Command Equipment",tdoc6,tdocspawn,_td7,_td7,true,{EMSCommand_id}],
[tdocsub,"<img image='sfg_textures\tags\EMTChief.paa'/> Command Equipment",tdocsub,tdocspawnsub,_td7,_td7,true,{EMSCommand_id}],
[tdoc7,"<img image='sfg_textures\tags\Advanced EMT.paa'/> Paramedic Equipment",tdoc7,tdocspawn,_td3,_td3,true,{EMTAdavnced_id}],
[tdoc7sub,"<img image='sfg_textures\tags\Advanced EMT.paa'/>  Paramedic Equipment",tdoc7sub,tdocspawnsub,_td3,_td3,true,{EMTAdavnced_id}],
[psobox,"BLS PSO Box",psobox,psocarspawn,_pso1,_pso1,true,{PSO_id}],
[psosrbox,"ALS PSO Box",psosrbox,psocarspawn,_pso2,_pso2,true,{PSOSenior_id}],
[psocombox,"PSO Command Box",psocombox,psocarspawn,_pso3,_pso3,true,{PSOCommand_id}],
[resourcesell,"Sell Resources",dummyobj,dummyobj,_rs,_rs,true,{isciv}],
[workplace_getjobflag_4,"PG Emporium",dummyobj,dummyobj,_gds1,_gds1,true,{true}],
[workplace_getjobflag_6,"Wigworths",dummyobj,dummyobj,_gds3,_gds3,true,{true}],
[OilSell1,"<img image='sfg_textures\tags\oil.paa'/> Oil Dealer", dummyobj,dummyobj, _emptyshop,_os,true,{isciv}],
[whalesell,"<img image='sfg_textures\tags\Whale.paa'/> Sell Whale",dummyobj,dummyobj,_emptyshop,_ws,true,{isciv}],
[terrorbox,"Terror Stuff",terrorbox,dummyobj,_terrorshop,_terrorshop,true,{isciv}],
[shadyd,"Barely Legal",shadyd,dummyobj, _shady,_shady,true,{isciv}],
[gangarea1,"Gang Shop",gangbox1,dummyobj,_gangshop_buy,_gangshop_buy,true,{isciv}],
[gangarea2,"Gang Shop",gangbox2,dummyobj,_gangshop_buy2,_gangshop_buy2,true,{isciv}],
[gangarea3,"Gang Shop",gangbox3,dummyobj,_gangshop_buy3,_gangshop_buy3,true,{isciv}],
[gangarea4,"Gang Shop",gangbox4,dummyobj,_gangshop_buy4,_gangshop_buy4,true,{isciv}],
[cdrugsell,"<img image='sfg_textures\tags\Cocaine.paa'/> Sell Cocaine",dummyobj,dummyobj,_dsc,_dsc,true,{isciv}],
[mdrugsell,"<img image='sfg_textures\tags\Marijuana.paa'/> Sell Marijuana",dummyobj,dummyobj,_dsm,_dsm,true,{isciv}],
[ldrugsell,"Sell LSD",dummyobj,dummyobj,_emptyshop,_dsl,true,{isciv}],
[hdrugsell,"Sell Heroin",dummyobj,dummyobj,_dsh,_dsh,true,{isciv}],
[methsell,"<img image='sfg_textures\tags\meth.paa'/> Sell Meth",dummyobj,dummyobj,_msc,_msc,true,{isciv}],
[pharmacy,"Pharmacy",dummyobj,pharmspawn,_psc,_emptyshop,false,{true}],
[copbasic1,"<img image='sfg_textures\tags\PD.paa'/> Basic Police Gear",copbasic1,ccarspawn, _copbasic,_copbasic,true,{isCop}],
[copbasic2,"<img image='sfg_textures\tags\PD.paa'/> Basic Police Gear",copbasic2,ccarspawn, _copbasic,_copbasic,true,{isCop}],
[copbasic4,"<img image='sfg_textures\tags\PD.paa'/> Basic Police Gear",copbasic4,ccarspawn, _copbasic,_copbasic,true,{isCop}],
[copswate,"<img image='sfg_textures\tags\PD.paa'/> Basic Police Gear",copswate,dummyobj, _copbasic,_copbasic,true,{isCop}],
[copuntrained,"<img image='sfg_textures\tags\PD.paa'/> Untrained Patrol Officer Equipment",copuntrained,ccarspawn,_copuntrained,_copuntrained,true,{isCop}],
[coppo1,"<img image='sfg_textures\tags\PD.paa'/> Rookie Patrol Officer Equipment",coppo1,ccarspawn,_coppo1,_coppo1,true,{PO1_id}],
[coppo2,"<img image='sfg_textures\tags\Patrol Officer.paa'/> Patrol Officer Equipment",coppo2,ccarspawn,_coppo2,_coppo2,true,{PO2_id}],
[coppo3,"<img image='sfg_textures\tags\PDSeniorPatrolOfficer.paa'/> Senior Patrol Officer Equipment",coppo3,ccarspawn,_coppo3,_coppo3,true,{PO3_id}],
[copcpl,"<img image='sfg_textures\tags\Corporal.paa'/> Patrol Corporal Equipment",copcpl,ccarspawn2,_copcpl,_copcpl,true,{Cpl_id}],
[copsgt,"<img image='sfg_textures\tags\Sergeant.paa'/> Patrol Sergeant Equipment",copsgt,ccarspawn2,_copsgt,_copsgt,true,{Sgt_id}],
[coplt,"<img image='sfg_textures\tags\PDLt.paa'/> Patrol Lieutenant Equipment",coplt,ccarspawnlt,_coplt,_coplt,true,{Lt_id}],
[copcpt,"<img image='sfg_textures\tags\PDCapt.paa'/> Patrol Captain Equipment",copcpt,ccarspawncpt,_copcpt,_copcpt,true,{Cpt_id}],
[dummyobj,"Major Equipment",dummyobj,ccarspawnchief,_copmajor,_copmajor,true,{Chief_id}],
[copchief,"<img image='sfg_textures\tags\PDChief.paa'/> Chief of Police Equipment",copchief,ccarspawnchief,_copchief,_copchief,true,{Chief_id}],
[copk9,"<img image='sfg_textures\tags\K9.paa'/> K-9 Officer Equipment",copk9,ck9spawn,_copk9,_copk9,true,{K9_id}],
[copair,"<img image='sfg_textures\tags\heli.paa'/> Police Aircraft",dummyobj, cairspawn,_copair,_copair,true,{PDAviation_id}],
[copairweapon,"<img image='sfg_textures\tags\heli.paa'/> Aviation Weapons",copairweapon, dummyobj,_copairweapon,_copairweapon,true,{PDAviation_id}],
[copswat2,"<img image='sfg_textures\tags\SWAT.paa'/> CIRU Operator",copswat2,dummyobj,_copswat4,_copswat4,true,{SWAT_id}],
[copswat3,"<img image='sfg_textures\tags\SWAT.paa'/> CIRU Specialist",copswat3,dummyobj,_copswat2,_copswat2,true,{SWAT_id}],
[copswat4,"<img image='sfg_textures\tags\SWAT.paa'/> CIRU Marksman",copswat4,dummyobj,_copswat3,_copswat3,true,{SWAT_id}],
[copswat5,"<img image='sfg_textures\tags\SWAT.paa'/> CIRU Team Leader",copswat5,dummyobj,_copswat1,_copswat1,true,{SWAT_id}],
[copswatvehicle,"<img image='sfg_textures\tags\SWAT.paa'/> CIRU Vehicles",dummyobj,ccarspawnswat,_copswatvehicle,_copswatvehicle,true,{SWAT_id}],
[ciruairshop,"<img image='sfg_textures\tags\SWAT.paa'/> CIRU Air Vehicles",dummyobj,ciruair,_ciruairs,_ciruairs,true,{SWAT_id}],
[copcoastguard,"Coast Guard Equipment",dummyobj,cgboatspawn,_copcoastguard,_copcoastguard,true,{CoastGuard_id}],
[copcoastguard2,"Coast Guard Command",dummyobj,cgboatspawn2,_copcoastguard2,_copcoastguard2,true,{CoastGuard_id}],
[copcoastguardair,"Coast Guard Aviation",dummyobj,jailpadcg,_copcoastguardair,_copcoastguardair,true,{CoastGuard_id}],
[docshop,"DOC Shop",docshop,doccarspawn,_copdoc,_copdoc,true,{DOC_id}],
[hwpatolbox,"Highway Patrol Shop",hwpatolbox,hwpspawn,_hwpshop,_hwpshop,true,{HWP_id}],
[rattlersshop,"Rattler's Trucking Shop",rattlersshop,rattlersspawn,_rtshop,_rtshop,true,{RT_id}],
[stkoshop1,"STKO Vehicle Shop",stkoshop1,rattlersspawn,_stko1,_stko1,true,{STKO1_id}],
[stkoshop2,"STKO Gang 1",stkoshop2,rattlersspawn,_stko2,_stko2,true,{STKO1_id}],
[stkoshop3,"STKO Gang 2",stkoshop3,rattlersspawn,_stko3,_stko3,true,{STKO2_id}],
[tpshop,"Tristen's Pizzeria Shop",tpshop,tpvspawn,_tpstore,_tpstore,true,{TP_id}],
[pmcshop,"PMC Shop",pmcshop,pmcvspawn,_pmc1,_pmc1,true,{PMC_id}],
[pmcdivshop,"PMC Division Shop",pmcdivshop,pmcvspawn,_pmc2,_pmc2,true,{PMCDivisions_id}],
[pmccomshop,"PMC Command Shop",pmccomshop,pmcvspawn,_pmc3,_pmc3,true,{PMCCommand_id}],
[milp,"Rifle & Vehicle shop",milp,milps,_emptyshop,_emptyshop,true,{isCiv}],
[Diamond_1,"Pawn Shop",dummyobj,dummyobj,_js,_js,true,{isCiv}],
[hospsell,"Sell Organs",dummyobj,dummyobj,_hsc,_hsc,true,{isCiv}],
[towservice1,"Towing Service",towservice1,towspawn,_ImpoundService,_ImpoundService,true,{TowingService_id}],
[lumbermill,"Lumber Mill",lumbermill,dummyobj,_LummberMill,_LummberMill,false,{isCiv}],
[terror,"Terror Shop",terror,dummyobj,_terror2,_terror2,true,{isCiv}],
[terrorair,"Terror Air Shop",terrorair,dummyobj,_terrorairlist,_terrorairlist,true,{isCiv}],
[SFGVehicleDealer,"Emita County Vehicle Dealer",SFGVehicleDealer,SFGSpawn,_SFGDealer,_SFGDealer,true,{isCiv}],
[BuildingCollapesLogic,"SFG App Store",dummyobj,dummyobj,AppStoreArray,AppStoreArray,false,{true}],
[dtkgarage,"",dummyobj,dummyobj,dtkgarageshop,dtkgarageshop,false,{true}]
];

private ["_flag"];
{
_flag   = ((INV_ItemShops select _ForEachIndex) select 0);														
shopusearray set [count shopusearray,_flag];
}forEach INV_ItemShops;

AppStorenum = (BuildingCollapesLogic call INV_getshopnum);
