private ["_role"];
_role = player;

_role addaction ["Confiscate Money","mafiasafe.sqf", ["ausrauben", mafiasafe, "mafiasafe"],1,false,true,"","player distance mafiasafe <= 2"];
_role addaction ["Remove Spike Strip","noscript.sqf",'if ([player,"spikestrip",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "spikestrip") && {player distance cursorTarget < 4}'];
_role addaction ["Take Criminal Evidence","noscript.sqf",'deletevehicle cursorTarget',1,true,true,"",'(typeOf cursorTarget == "weaponholder") && {player distance cursorTarget < 4}'];
_role addaction ["Take Scuba Gear","noscript.sqf",'if ([player,"gnt_scubaw",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "gnt_scubaw") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Stop Sign","noscript.sqf",'if ([player,"glt_roadsign_octagon",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "glt_roadsign_octagon") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Concrete Barrier Short","noscript.sqf",'if ([player,"il_barrier",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "il_barrier") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Searchlight","noscript.sqf",'if ([player,"SearchLight_UN_EP1",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "SearchLight_UN_EP1") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Roadblock","noscript.sqf",'if ([player,"roadblock",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Land_CncBlock_Stripes") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Bar Gate","noscript.sqf",'if ([player,"Bargate",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "ZavoraAnim") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Road Cone","noscript.sqf",'if ([player,"roadcone",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Land_coneLight") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Bunker (small)","noscript.sqf",'if ([player,"bunkersmall",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Land_fortified_nest_small") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Danger Sign","noscript.sqf",'if ([player,"danger",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Sign_Danger") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Ladder","noscript.sqf",'if ([player,"land_ladder_half",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "land_ladder_half") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Road Barrier","noscript.sqf",'if ([player,"Roadbarrier_long",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "RoadBarrier_long") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Road Barrier","noscript.sqf",'if ([player,"RoadBarrier_light",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "RoadBarrier_light") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Caution Tape","noscript.sqf",'if ([player,"10mTape",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "10mTape") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Body Bag","noscript.sqf",'[player,"geld",1000] call storage_add; deletevehicle cursorTarget',1,true,true,"",'(typeOf cursorTarget == "body") && {player distance cursorTarget < 4}'];

/*SHOPS*/
_role addaction ["Shop 1 Export","noscript.sqf","[ (shop1 call INV_getshopnum)]call shops_openshop; ",1,false,true,"","player distance shop1export <= 3"];
_role addaction ["Shop 4 Export","noscript.sqf","[ (shop4 call INV_getshopnum)]call shops_openshop; ",1,false,true,"","player distance shop4export <= 3"];


_role addaction [format ["Buy K9 ($%1)", dog_cost],"copdog.sqf", ["buydog"],1,false,true,"",'player distance dogspawn <= 5 and (K9_id)'];

/*OTHER*/
_role addaction ["Get Patrol Mission","coppatrol.sqf",["start"],1,false,true,"","player distance copbank <= 4 and !pmissionactive and !patrolwaittime"];
_role addaction ["Cancel My Patrol Mission","coppatrol.sqf",["end"],1,false,true,"","pmissionactive and player distance copbank <= 4"];
_role addaction ["Get Security Mission","coppatrol.sqf",["start1"],1,false,true,"","player distance copbank <= 4 and !pmissionactive1 and !patrolwaittime1"];
_role addaction ["Cancel My Security Mission","coppatrol.sqf",["end1"],1,false,true,"","pmissionactive1 and player distance copbank <= 4"];
_role addaction ["Crime Log","maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
_role addaction ["Elect A Governor","maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
_role addaction ["Sign-up For A Debit Card","debitcardsignup.sqf",["mainbank"],1,false,true,"","player distance mainbank <= 15 and (!SigningUpForDebitCard)"];
_role addaction ["Impound Lot","noscript.sqf",'[dummyobj, "Retrive","LandVehicle"]call Other_impound;',1,false,true,"","player distance newimpoundlot <= 5"];
_role addaction ["Reset Targets","noscript.sqf",'{_x animate["terc",0]} count (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange1 < 10'];
_role addaction ["Reset Targets","noscript.sqf",'{_x animate["terc",0]} count (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange2 < 10'];
_role addaction ["Escort VIP", "noscript.sqf", "[VIPtarget] join (group player); systemChat  ""Escort The VIP To The Police Base Before He Is Assassinated!"";",1,false,true,"","player distance VIPtarget < 5"];
_role addaction ["Remove Blindfold","FUNCTIONS\ITEMS\blindfold.sqf",[],1,false,true,"","isPlayer cursorTarget and cursorTarget getVariable 'blindfolded'"];

/*VEHICLE*/
player addaction ["Role Vehicle Over","noscript.sqf",'[]call Other_unflipvehicle;',1,false,true,"",'_vcl = cursorTarget; player distance _vcl < 5 and [player,_vcl]call vehicle_hasKeys'];
_role addaction [localize "STRS_addaction_trunk_see","noscript.sqf",'_vcl = cursorTarget;_var = _vcl getVariable "DTK_OwnerUID"; _str = format["%1_storage", _vcl];[_str]call Other_vehiclecheck;',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID"; player distance _vcl < 5 and !([player,_vcl]call vehicle_hasKeys) and (!isNil "_var")'];
_role addaction [localize "STRS_addaction_trunk_check","noscript.sqf",'_vcl = cursorTarget;_var = _vcl getVariable "DTK_OwnerUID";_str = format["%1_storage", _vcl];if([_vcl,_str] call INV_RemoveIllegalStorage)then{call compile format["publicvariable ""%1"";", _str]};',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID"; player distance _vcl < 5 and !([player,_vcl]call vehicle_hasKeys) and (!isNil "_var")'];
_role addaction ["Pull Player Out","noscript.sqf",'cursorTarget spawn Other_pullout;',1,true,true,"",'_vcl = cursorTarget;player distance _vcl < 5 and count (crew _vcl) > 0 and (call INV_isArmed)'];
_role addaction [localize "STRS_addAction_vehicleinfo","noscript.sqf",'cursorTarget call Other_vehinfo;',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID";player distance _vcl < 5 and (!isNil "_var")'];
_role addaction ["Put Player In Vehicle","noscript.sqf",'[]call Other_PutPlayerInCar;',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID"; player distance _vcl < 5 and (!isNil "_var")'];
_role addaction ["Impound Vehicle","noscript.sqf",'_vcl = cursorTarget;[_vcl, "impound",""]call Other_impound;',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID"; player distance _vcl < 10 and (!isNil "_var")'];

/*VEHICLE SAVER*/
_role addaction ["[SAVE YOUR LAND VEHICLE]","noscript.sqf",'[]call StatSave_SaveVehicle;',1,true,true,"",'player distance cursorTarget < 5 and [player,cursorTarget]call vehicle_hasKeys and (player distance savepoint2 <= 30 or player distance savepontpdcommand <= 30 or player distance savepoint2s <= 30 )'];
_role addaction ["[Take Land Vehicle From Storage]","noscript.sqf",'[ctrafficspawn]call StatSave_RetriveVehicleLand;',1,false,true,"","player distance savepoint2 <= 3"];
_role addaction ["[Take Land Vehicle From Storage]","noscript.sqf",'[ccarspawnchief]call StatSave_RetriveVehicleLand;',1,false,true,"","player distance savepontpdcommand <= 3"];
_role addaction ["[Take Land Vehicle From Storage]","noscript.sqf",'[ccarspawn1]call StatSave_RetriveVehicleLand;',1,false,true,"","player distance savepoint2s <= 3"];

/*SKINS*/
_role addaction ["Switch To CIRU Probationary Uniform","noscript.sqf",'["vilas_sira_swat_m416"] call Other_clothes;',1,true,true,"",'SWAT_id && {player distance copswatbank < 2}'];
_role addaction ["Switch To CIRU Uniform","noscript.sqf",'["ibr_fea"] call Other_clothes;',1,true,true,"",'SWAT_id && {player distance copswatbank < 2}'];
_role addaction ["Switch To CIRU Marksman Uniform","noscript.sqf",'["USMC_SoldierS_Sniper"] call Other_clothes;',1,true,true,"",'SWAT_id && {player distance copswatbank < 2}'];
_role addaction ["Switch To CIRU Lead Uniform","noscript.sqf",'["vilas_sira_swat"] call Other_clothes;',1,true,true,"",'SWAT_id && {player distance copswatbank < 2}'];
_role addaction ["Switch To Patrol Uniform","noscript.sqf",'["sfg_patrol"] call Other_clothes;',1,true,true,"",'SWAT_id && {player distance copswatbank < 2}'];
_role addaction ["Switch To Chief Uniform","noscript.sqf",'["sfg_trevor"] call Other_clothes;',1,true,true,"",'Chief_id && {player distance copcmdbank < 2}'];
_role addaction ["Switch To Asst.Chief Uniform","noscript.sqf",'["sfg_asstc"] call Other_clothes;',1,true,true,"",'Chief_id && {player distance copcmdbank < 2}'];
_role addaction ["Switch To Pilot Uniform","noscript.sqf",'["US_Soldier_Pilot_EP1"] call Other_clothes;',1,true,true,"",'PDAviation_id && {player distance copairweapon < 2}'];
_role addaction ["Switch To Patrol Uniform","noscript.sqf",'["sfg_patrol"] call Other_clothes;',1,true,true,"",'PDAviation_id && {player distance copairweapon < 2}'];
_role addaction ["Switch To Pilot Uniform","noscript.sqf",'["US_Soldier_Pilot_EP1"] call Other_clothes;',1,true,true,"",'PDAviation_id && {player distance copairweapon2 < 2}'];
_role addaction ["Switch To Patrol Uniform","noscript.sqf",'["sfg_patrol"] call Other_clothes;',1,true,true,"",'PDAviation_id && {player distance copairweapon2 < 2}'];
_role addaction ["Switch To K-9 Uniform","noscript.sqf",'["sfg_k9"] call Other_clothes;',1,true,true,"",'K9_id && {player distance copk9 < 2}'];
_role addaction ["Switch To K-9 Command Uniform","noscript.sqf",'["sfg_k9com"] call Other_clothes;',1,true,true,"",'K9_id && {player distance copk9 < 2}'];
_role addaction ["Switch To Patrol Uniform","noscript.sqf",'["sfg_patrol"] call Other_clothes;',1,true,true,"",'K9_id && {player distance copk9 < 2}'];
_role addaction ["Switch To Captain Uniform","noscript.sqf",'["sfg_cpt"] call Other_clothes;',1,true,true,"",'Cpt_id && {player distance copcmdbank < 2}'];
_role addaction ["Switch To Lieutenant Uniform","noscript.sqf",'["sfg_lt"] call Other_clothes;',1,true,true,"",'Lt_id && {player distance copcmdbank < 2}'];
_role addaction ["Switch To Patrol Sgt. Uniform","noscript.sqf",'["sfg_sgt"] call Other_clothes;',1,true,true,"",'Sgt_id && {player distance copsgt < 2}'];
_role addaction ["Switch To Patrol Cpl. Uniform","noscript.sqf",'["sfg_cpl"] call Other_clothes;',1,true,true,"",'Cpl_id && {player distance copcpl < 2}'];
_role addaction ["Switch To Patrol Senior Patrol Uniform","noscript.sqf",'["sfg_snr"] call Other_clothes;',1,true,true,"",'PO3_id && {player distance coppo3 < 2}'];
_role addaction ["Switch To Coast Guard Uniform","noscript.sqf",'["yup_uscg_Pilot"] call Other_clothes;',1,true,true,"",'CoastGuard_id && {player distance copcoastguardbank < 2}'];
_role addaction ["Switch To Patrol Uniform","noscript.sqf",'["sfg_patrol"] call Other_clothes;',1,true,true,"",'PO2_id && {player distance copcoastguardbank < 2}'];
_role addaction ["Switch To DOC Uniform","noscript.sqf",'["sfg_doc"] call Other_clothes;',1,true,true,"",'DOC_id && {player distance docatm < 2}'];
_role addaction ["Switch To DOC Command Uniform","noscript.sqf",'["sfg_doccom"] call Other_clothes;',1,true,true,"",'DOC_id && {player distance docatm < 2}'];
_role addaction ["Switch To DTU Command Uniform","noscript.sqf",'["sfg_uccom"] call Other_clothes;',1,true,true,"",'Lt_id && {player distance devatm < 2}'];
_role addaction ["Switch To DTU Uniform","noscript.sqf",'["sfg_uc"] call Other_clothes;',1,true,true,"",'Lt_id && {player distance devatm < 2}'];
_role addaction ["Switch To Highway Patrol Uniform","noscript.sqf",'["sfg_hwp"] call Other_clothes;',1,true,true,"",'HWP_id && {player distance cophwatm < 2}'];
_role addaction ["Switch To Senior Highway Patrol Uniform","noscript.sqf",'["sfg_hwpsnr"] call Other_clothes;',1,true,true,"",'HWP_id && {player distance cophwatm < 2}'];
_role addaction ["Switch To Highway Patrol Cpl. Uniform","noscript.sqf",'["sfg_hwpcpl"] call Other_clothes;',1,true,true,"",'HWP_id && {player distance cophwatm < 2}'];
_role addaction ["Switch To Highway Patrol Sgt. Uniform","noscript.sqf",'["sfg_hwpsgt"] call Other_clothes;',1,true,true,"",'HWP_id && {player distance cophwatm < 2}'];
_role addaction ["Switch To Highway Patrol Command Uniform","noscript.sqf",'["sfg_hwpcmd"] call Other_clothes;',1,true,true,"",'HWP_id && {player distance cophwatm < 2}'];


/*GAS STATIONS*/
_role addaction [format [localize "STRS_addAction_buy_gas", TankenCost],"petrolrefuel.sqf",[],1,false,true,"","player distance fuel2 <= 23 and TankenCost < maxpetroluse"];
_role addaction [format [localize "STRS_addAction_buy_gas", TankenCost],"petrolrefuel.sqf",[],1,false,true,"","player distance fuel4 <= 23 and TankenCost < maxpetroluse"];
_role addaction [format [localize "STRS_addAction_buy_gas", TankenCost],"petrolrefuel.sqf",[],1,false,true,"","player distance fuel5 <= 23 and TankenCost < maxpetroluse"];
_role addaction [format [localize "STRS_addAction_buy_gas", TankenCost],"petrolrefuel.sqf",[],1,false,true,"","player distance fuel7 <= 23 and TankenCost < maxpetroluse"];
_role addaction [format [localize "STRS_addAction_buy_gas", TankenCost],"petrolrefuel.sqf",[],1,false,true,"","player distance fuel8 <= 23 and TankenCost < maxpetroluse"];
_role addaction ["NO GAS AVAILABLE","petrolrefuel.sqf",[],1,false,true,"","player distance fuel2 <= 23 and TankenCost >= maxpetroluse"];
_role addaction ["NO GAS AVAILABLE","petrolrefuel.sqf",[],1,false,true,"","player distance fuel4 <= 23 and TankenCost >= maxpetroluse"];
_role addaction ["NO GAS AVAILABLE","petrolrefuel.sqf",[],1,false,true,"","player distance fuel5 <= 23 and TankenCost >= maxpetroluse"];
_role addaction ["NO GAS AVAILABLE","petrolrefuel.sqf",[],1,false,true,"","player distance fuel7 <= 23 and TankenCost >= maxpetroluse"];
_role addaction ["NO GAS AVAILABLE","petrolrefuel.sqf",[],1,false,true,"","player distance fuel8 <= 23 and TankenCost >= maxpetroluse"];

_role addaction ["Dog Control","noscript.sqf", 'ar_doggy = true', 1, false, true, "", "!ar_doggy and alive (player getVariable 'CLAY_DogUnit')"];
_role addaction ["Exit Dog Control","noscript.sqf", 'ar_doggy = false', 1, false, true, "", "ar_doggy"];
_role addaction ["Follow","noscript.sqf", '[1] execVM "\CLAY_Dogs\handler\dogMove.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction ["Wait","noscript.sqf", '[2] execVM "\CLAY_Dogs\handler\dogMove.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction ["Move To Pos","noscript.sqf", '[3] execVM "\CLAY_Dogs\handler\dogMove.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction [" ","noscript.sqf", '', 1, false, true, "", "ar_doggy"];
_role addaction ["Attack Target","noscript.sqf", '[cursorTarget] execVM "dogAttack.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction ["Drug Search","noscript.sqf", '[cursorTarget] execVM "dogsearch.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction ["Board Car","noscript.sqf", '[1, cursorTarget] execVM "dogVehicle.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction ["Dismount","noscript.sqf", '[2] execVM "dogVehicle.sqf"', 1, false, true, "", "ar_doggy"];

_role addaction ["Tow Vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0);["TOW",_vcl] call Other_Towing;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0); player distance _vcl < 10 and _vcl getVariable "towing" == "" and [player,_vcl]call vehicle_hasKeys'];
_role addaction ["Release Vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0);["RELEASE",_vcl] call Other_Towing;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0); player distance _vcl < 10 and _vcl getVariable "towing" != "" and [player,_vcl]call vehicle_hasKeys'];

_role addaction ["Burn Marijuana","noscript.sqf", "['SERVER',[cursorTarget],'s_drug_burnplant',true,false]call network_MPExec;", 1, false, true, "", "player distance cursorTarget < 3 && {typeOf cursorTarget == 'as_p_fiberPlant_EP1'}"];
_role addaction ["Burn Poppy","noscript.sqf", "['SERVER',[cursorTarget],'s_drug_burnplant',true,false]call network_MPExec;", 1, false, true, "", "player distance cursorTarget < 3 && {typeOf cursorTarget == 'as_b_PinusM1s_EP1'}"];
_role addaction ["Burn Cocaine","noscript.sqf", "['SERVER',[cursorTarget],'s_drug_burnplant',true,false]call network_MPExec;", 1, false, true, "", "player distance cursorTarget < 3 && {typeOf cursorTarget == 'as_b_PistaciaL1s_EP1'}"];


/*Garage*/
(vehicle player) addaction ["Open Garage","noscript.sqf",'[ (dtkgarage call INV_getshopnum)]call shops_openshop; ',1,false,true,"","(player distance dtkgarage <= 10 or player distance ccarspawn <= 10) and vehicle player != player"];
