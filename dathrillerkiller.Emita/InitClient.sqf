["sfg_textures\misc\Gps.paa",-0.06,-0.36] call bis_customGPS;
execVM "CORE\CLIENT\nametags.sqf";
call events_events;

[player,"cookie", 1] call storage_add;

diag_log text "[LOG] Straight Forward Gaming Island Life Init Finished";

enableSentences false;
player disableConversation true;