["sfg_textures\misc\Gps.paa",-0.06,-0.36] call bis_customGPS;
execVM "CORE\CLIENT\nametags.sqf";
call events_events;

player setVariable ["Attached",false,false];

{_x setFuelCargo 0} count (nearestobjects [getpos copbase1, ["gasstation","Land_A_Fuelstation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_benzina_schnell","Land_fuelstation_army","Barrels"], 20000]);

["ALL",["dtk_client",format ["// %1 Has Joined Straight Forward Gaming Island Life As %2!", name player, player],1],"network_chat",false,false]call network_MPExec;
[player,"has joined the server",[0.03,1,0.32,1]]call admin_logs_add;
[player,"cookie", 1] call storage_add;

diag_log "[LOG] Straight Forward Gaming Island Life Init Finished";