private ["_role"];
_role = player;


_role addaction ["Take Scuba Gear","noscript.sqf",'if ([player,"gnt_scubaw",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "gnt_scubaw") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Stop Sign","noscript.sqf",'if ([player,"glt_roadsign_octagon",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "glt_roadsign_octagon") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Concrete Barrier Short","noscript.sqf",'if ([player,"il_barrier",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "il_barrier") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Searchlight","noscript.sqf",'if ([player,"SearchLight_UN_EP1",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "SearchLight_UN_EP1") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Roadblock","noscript.sqf",'if ([player,"roadblock",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Land_CncBlock_Stripes") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Bar Gate","noscript.sqf",'if ([player,"Bargate",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "ZavoraAnim") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Road Cone","noscript.sqf",'if ([player,"roadcone",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Land_coneLight") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Bunker (Small)","noscript.sqf",'if ([player,"bunkersmall",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Land_fortified_nest_small") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Danger Sign","noscript.sqf",'if ([player,"danger",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "Sign_Danger") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Ladder","noscript.sqf",'if ([player,"land_ladder_half",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "land_ladder_half") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Road Barrier","noscript.sqf",'if ([player,"Roadbarrier_long",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "RoadBarrier_long") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Road Barrier","noscript.sqf",'if ([player,"RoadBarrier_light",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "RoadBarrier_light") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Caution Tape","noscript.sqf",'if ([player,"10mTape",1] call storage_add)then {deletevehicle cursorTarget}',1,true,true,"",'(typeOf cursorTarget == "10mTape") && {player distance cursorTarget < 4}'];
_role addaction ["Remove Body Bag","noscript.sqf",'[player,"geld",1000] call storage_add; deletevehicle cursorTarget',1,true,true,"",'(typeOf cursorTarget == "body") && {player distance cursorTarget < 4}'];
_role addaction ["Open/Close Gate","noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 '];



_role addaction ["Role Vehicle Over","noscript.sqf",'[]call Other_unflipvehicle;',1,false,true,"",'_vcl = cursorTarget;player distance _vcl < 5 and [player,_vcl]call keys_has'];
_role addaction ["Repair Vehicle","noscript.sqf",'[cursorTarget]call Other_repairvehicle;',1,true,true,"",'_vcl = cursorTarget; [_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf && {player distance _vcl < 10}'];
_role addaction ["Impound Vehicle","noscript.sqf",'[cursorTarget, "Impound",""]call Other_impound;',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID";[_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf and player distance _vcl < 5 and (!isNil "_var")'];
_role addaction ["Extract Victim","noscript.sqf",'cursorTarget spawn Other_pullout;',1,true,true,"",'_vcl = cursorTarget;[_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf and player distance _vcl < 5 and count (crew _vcl) > 0'];
_role addaction [localize "STRS_addAction_vehicleinfo","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0)call Other_vehinfo;',1,true,true,"",'_vcl = cursorTarget; _var = _vcl getVariable "DTK_OwnerUID"; [_vcl,["Air", "Ship", "LandVehicle"]]call core_isKindOf and player distance _vcl < 5 and (!isNil "_var")'];
_role addaction ["Shop 1 Export","noscript.sqf",'[ (shop1 call shops_index)]call shops_openshop; ',1,false,true,"","player distance shop1export <= 3"];
_role addaction ["Shop 4 Export","noscript.sqf",'[ (shop4 call shops_index)]call shops_openshop; ',1,false,true,"","player distance shop4export <= 3"];
_role addaction ["Impound Lot","noscript.sqf",'[dummyobj, "Retrive","LandVehicle"]call Other_impound;',1,false,true,"","player distance newimpoundlot <= 5"];
_role addaction ["Sign-Up For Debit Card","scripts\debitcardsignup.sqf",["mainbank"],1,false,true,"","player distance mainbank <= 15 and (!SigningUpForDebitCard)"];
_role addaction ["Crime Log","scripts\maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
_role addaction [format ["Pay Bail", slave_cost],"scripts\maindialogs.sqf", ["bail"],1,false,true,"","player distance bailflag <= 3 and isciv"];
_role addaction ["Resuscitate/Shock Victim","noscript.sqf",'[ems_nearman]call medical_revive;',1,true,true,"",'call ems_neardead'];
_role addaction ["Remove Blindfold","FUNCTIONS\ITEMS\blindfold.sqf",[],1,false,true,"","isPlayer cursorTarget and cursorTarget getVariable 'blindfolded'"];


_role addaction ["Switch To Turn Out Uniform","noscript.sqf",'["a2l_firefighter1"] call clothing_switch;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and [player,_vcl]call keys_has and (FF1_id)'];
_role addaction ["Switch To Turn Out SCBA Uniform","noscript.sqf",'["a2l_firefighter"] call clothing_switch;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and [player,_vcl]call keys_has and (FF1_id)'];
_role addaction ["Switch To Firefighter Duty Uniform","noscript.sqf",'["sfg_fr"] call clothing_switch;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and [player,_vcl]call keys_has and (FF1_id)'];
_role addaction ["Switch To Turn Out Uniform","noscript.sqf",'["a2l_firefighter1"] call clothing_switch;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and [player,_vcl]call keys_has and (FF1_id)'];
_role addaction ["Switch To Turn Out SCBA Uniform","noscript.sqf",'["a2l_firefighter"] call clothing_switch;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and [player,_vcl]call keys_has and (FF1_id)'];
_role addaction ["Switch To Firefighter Duty Uniform","noscript.sqf",'["sfg_fr"] call clothing_switch;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and [player,_vcl]call keys_has and (FF1_id)'];

_role addaction ["[SAVE YOUR LAND VEHICLE]","noscript.sqf",'[carspawn1]call StatSave_SaveVehicle;',1,true,true,"",'player distance cursorTarget < 5 and [cursorTarget,_vcl]call keys_has and (player distance emssavepoint2 <= 30 or player distance emssavepoint1 <= 30)'];
_role addaction ["[Take Land Vehicle From Storage]","noscript.sqf",'[tdocspawn]call StatSave_RetriveVehicleLand;',1,false,true,"","player distance emssavepoint1 <= 3"];
_role addaction ["[Take Land Vehicle From Storage]","noscript.sqf",'[tdocspawnsub]call StatSave_RetriveVehicleLand;',1,false,true,"","player distance emssavepoint2 <=3"];


_role addaction ["Tow Vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0);["TOW",_vcl] call Other_Towing;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0); player distance _vcl < 10 and _vcl getVariable "towing" == "" and [player,_vcl]call keys_has'];
_role addaction ["Release Vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0);["RELEASE",_vcl] call Other_Towing;',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["bc_towtruck","oldtruck","datsun1_civil_3_open","oltruc3","Pickup_PK_TK_GUE_EP1","f350_red","f350_black","f350_blue","f350_pink","f350_white","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","il_silverado_pd","lcu"], 10] select 0); player distance _vcl < 10 and _vcl getVariable "towing" != "" and [player,_vcl]call keys_has'];
_role addaction ["Fix Gas Leak","noscript.sqf",'[]call ems_FixGas;',1,false,true,"",'_vcl = (nearestobjects [getpos player, ["HeliH"], 10] select 0);player distance _vcl < 10 and EMSMissionType == "Gas" and !EMSMissionAction'];
_role addaction ["Clean Up Building Collapse","noscript.sqf",'[]call Other_CleanUpBuildingCollapes;',1,false,true,"",'_vcl = (nearestobjects [getpos player, ["HeliH"], 10] select 0);player distance _vcl < 10 and EMSMissionType == "Collapes" and !EMSMissionAction'];
_role addaction ["Move Stretcher","noscript.sqf",'detach cursorTarget; cursorTarget attachTo [player];',1,false,true,"",'(typeOf cursorTarget) == "stretcher" and player distance cursorTarget < 7'];
_role addaction ["Drop Stretcher","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["stretcher"], 4] select 0); detach _vcl;',1,false,true,"",'_vcl = (nearestobjects [getpos player, ["stretcher"], 4] select 0);player distance _vcl < 7'];
_role addaction ["Load Stretcher In Ambulance","noscript.sqf",'_Ambo = (nearestobjects [getpos player, ["gmc_ambulance"], 6] select 0); _strech = (nearestobjects [getpos player, ["stretcher"], 2] select 0); _strech attachTo [_Ambo,[0,-1.2,1.4]]; if (_strech animationPhase "bed" < 0.5) then {_strech animate ["leg1", 1]; _strech animate ["leg2", 1]; _strech animate ["bed", 1];}; ',1,false,true,"",'_Ambo = (nearestobjects [getpos player, ["gmc_ambulance"], 6] select 0); _vcl = (nearestobjects [getpos player, ["stretcher"], 2] select 0);player distance _vcl < 2 and player distance _Ambo < 7'];

_role addaction ["Drag Body","noscript.sqf",'[ems_nearman]spawn medical_drag',1,false,true,"","!medical_draging && (call ems_neardead)"];
_role addaction ["Drop Body","noscript.sqf",'medical_draging = false',1,false,true,"","medical_draging"];