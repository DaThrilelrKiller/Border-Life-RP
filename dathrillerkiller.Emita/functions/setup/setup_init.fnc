setup_init_done = true;

dtk_active_modules = dtk_active_modules - ["setup"];

{
	if (!isNil format["%1_init",_x] && {isNil format["%1_init_done",_x]})then {
		call call compile format["%1_init",_x];
		if (dtk_client)then {waitUntil {!isNil format["%1_init_done",_x]};};
		diag_log format ["Module Setup - %1",_x];
	};
}count dtk_active_modules;

systemchat "Modules Done!";


if (dtk_client)then{
/* player addEventHandler ["killed", {_this call setup_killed}]; */
player addEventHandler ["respawn", {_this call setup_respawn; _this}]; 
/* player addEventHandler ["handleDamage", {_this call setup_handleDamage}]; */
/* player addEventHandler ["fired", {_this call setup_fired}]; */
}else{
call compile preprocessFile "\MPMissions\configuration\Cfgmodules.sqf";
};