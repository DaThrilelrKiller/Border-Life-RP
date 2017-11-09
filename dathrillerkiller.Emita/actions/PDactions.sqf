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
_role addaction ["Shop 1 Export","noscript.sqf","[ (shop1 call shops_index)]call shops_openshop; ",1,false,true,"","player distance shop1export <= 3"];
_role addaction ["Shop 4 Export","noscript.sqf","[ (shop4 call shops_index)]call shops_openshop; ",1,false,true,"","player distance shop4export <= 3"];


_role addaction [format ["Buy K9 ($%1)", dog_cost],"scripts\copdog.sqf", ["buydog"],1,false,true,"",'player distance dogspawn <= 5 and (K9_id)'];

/*OTHER*/
_role addaction ["Get Patrol Mission","scripts\coppatrol.sqf",["start"],1,false,true,"","player distance copbank <= 4 and !pmissionactive and !patrolwaittime"];
_role addaction ["Cancel My Patrol Mission","scripts\coppatrol.sqf",["end"],1,false,true,"","pmissionactive and player distance copbank <= 4"];
_role addaction ["Elect A Governor","scripts\maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
_role addaction ["Sign-up For A Debit Card","scripts\debitcardsignup.sqf",["mainbank"],1,false,true,"","player distance mainbank <= 15 and (!SigningUpForDebitCard)"];
_role addaction ["Impound Lot","noscript.sqf",'[dummyobj, "Retrive","LandVehicle"]call Other_impound;',1,false,true,"","player distance newimpoundlot <= 5"];
_role addaction ["Reset Targets","noscript.sqf",'{_x animate["terc",0]} count (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange1 < 10'];
_role addaction ["Reset Targets","noscript.sqf",'{_x animate["terc",0]} count (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange2 < 10'];
_role addaction ["Escort VIP", "noscript.sqf", "[VIPtarget] join (group player); systemChat  ""Escort The VIP To The Police Base Before He Is Assassinated!"";",1,false,true,"","player distance VIPtarget < 5"];
_role addaction ["Remove Blindfold","FUNCTIONS\ITEMS\blindfold.sqf",[],1,false,true,"","isPlayer cursorTarget and cursorTarget getVariable 'blindfolded'"];

/*VEHICLE*/
player addaction ["Role Vehicle Over","noscript.sqf",'[]call Other_unflipvehicle;',1,false,true,"",'_vcl = cursorTarget; player distance _vcl < 5 and [player,_vcl]call keys_has'];
_role addaction [localize "STRS_addaction_trunk_see","noscript.sqf",'[cursorTarget]call storage_seach;',1,true,true,"",'_vcl = cursorTarget; [_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf && {player distance _vcl < 10}'];
_role addaction [localize "STRS_addaction_trunk_check","noscript.sqf",'_vcl = cursorTarget;_var = _vcl getVariable "DTK_OwnerUID";_str = format["%1_storage", _vcl];if([_vcl,_str] call INV_RemoveIllegalStorage)then{call compile format["publicvariable ""%1"";", _str]};',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID"; player distance _vcl < 5 and !([player,_vcl]call keys_has) and (!isNil "_var")'];
_role addaction ["Pull Player Out","noscript.sqf",'cursorTarget spawn Other_pullout;',1,true,true,"",'_vcl = cursorTarget;player distance _vcl < 5 and count (crew _vcl) > 0 and (call INV_isArmed)'];
_role addaction [localize "STRS_addAction_vehicleinfo","noscript.sqf",'cursorTarget call Other_vehinfo;',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID";player distance _vcl < 5 and (!isNil "_var")'];
_role addaction ["Put Player In Vehicle","noscript.sqf",'[]call Other_PutPlayerInCar;',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID"; player distance _vcl < 5 and (!isNil "_var")'];
_role addaction ["Impound Vehicle","noscript.sqf",'_vcl = cursorTarget;[_vcl, "impound",""]call Other_impound;',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID"; player distance _vcl < 10 and (!isNil "_var")'];

/*VEHICLE SAVER*/
_role addaction ["[SAVE YOUR LAND VEHICLE]","noscript.sqf",'[]call StatSave_SaveVehicle;',1,true,true,"",'player distance cursorTarget < 5 and [player,cursorTarget]call keys_has and (player distance savepoint2 <= 30 or player distance savepontpdcommand <= 30 or player distance savepoint2s <= 30 )'];
_role addaction ["[Take Land Vehicle From Storage]","noscript.sqf",'[ctrafficspawn]call StatSave_RetriveVehicleLand;',1,false,true,"","player distance savepoint2 <= 3"];
_role addaction ["[Take Land Vehicle From Storage]","noscript.sqf",'[ccarspawnchief]call StatSave_RetriveVehicleLand;',1,false,true,"","player distance savepontpdcommand <= 3"];
_role addaction ["[Take Land Vehicle From Storage]","noscript.sqf",'[ccarspawn1]call StatSave_RetriveVehicleLand;',1,false,true,"","player distance savepoint2s <= 3"];

_role addaction ["Dog Control","noscript.sqf", 'ar_doggy = true', 1, false, true, "", "!ar_doggy and alive (player getVariable 'CLAY_DogUnit')"];
_role addaction ["Exit Dog Control","noscript.sqf", 'ar_doggy = false', 1, false, true, "", "ar_doggy"];
_role addaction ["Follow","noscript.sqf", '[1] execVM "\CLAY_Dogs\handler\dogMove.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction ["Wait","noscript.sqf", '[2] execVM "\CLAY_Dogs\handler\dogMove.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction ["Move To Pos","noscript.sqf", '[3] execVM "\CLAY_Dogs\handler\dogMove.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction [" ","noscript.sqf", '', 1, false, true, "", "ar_doggy"];
_role addaction ["Attack Target","noscript.sqf", '[cursorTarget] execVM "scripts\dogAttack.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction ["Drug Search","noscript.sqf", '[cursorTarget] execVM "scripts\dogSearch.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction ["Board Car","noscript.sqf", '[1, cursorTarget] execVM "scripts\dogVehicle.sqf"', 1, false, true, "", "ar_doggy"];
_role addaction ["Dismount","noscript.sqf", '[2] execVM "scripts\dogVehicle.sqf"', 1, false, true, "", "ar_doggy"];

_role addaction ["Tow Vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0);["TOW",_vcl] call Other_Towing;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0); player distance _vcl < 10 and _vcl getVariable "towing" == "" and [player,_vcl]call keys_has'];
_role addaction ["Release Vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0);["RELEASE",_vcl] call Other_Towing;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0); player distance _vcl < 10 and _vcl getVariable "towing" != "" and [player,_vcl]call keys_has'];

_role addaction ["Burn Marijuana","noscript.sqf", "['SERVER',[cursorTarget],'s_drug_burnplant',true,false]call network_MPExec;", 1, false, true, "", "player distance cursorTarget < 3 && {typeOf cursorTarget == 'as_p_fiberPlant_EP1'}"];
_role addaction ["Burn Poppy","noscript.sqf", "['SERVER',[cursorTarget],'s_drug_burnplant',true,false]call network_MPExec;", 1, false, true, "", "player distance cursorTarget < 3 && {typeOf cursorTarget == 'as_b_PinusM1s_EP1'}"];
_role addaction ["Burn Cocaine","noscript.sqf", "['SERVER',[cursorTarget],'s_drug_burnplant',true,false]call network_MPExec;", 1, false, true, "", "player distance cursorTarget < 3 && {typeOf cursorTarget == 'as_b_PistaciaL1s_EP1'}"];