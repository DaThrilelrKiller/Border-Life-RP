["sfg_textures\misc\Gps.paa",-0.06,-0.36] call bis_customGPS;
execVM "CORE\CLIENT\nametags.sqf";
call events_events;

player setVariable ["Attached",false,false];

[player,"has joined the server",[0.03,1,0.32,1]]call admin_logs_add;
[player,"cookie", 1] call storage_add;

diag_log "[LOG] Straight Forward Gaming Island Life Init Finished";