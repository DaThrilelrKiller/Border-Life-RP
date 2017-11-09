private ["_modules","_functions"];
dtk_fnc_total = 0;

dtk_active_modules = 
[
"Core",
"BIS",
"Network",
"Storage",
"Shops",
"Licenses",
"Keybindings",
"Slots",
"Chat",
"Markers",
"Siren",
"Checkpoint",
"Admin",
"Cdb",
"Plates",
"Cuffs",
"String",
"Shipment",
"Locations",
"Setup",
"Tfar",
"Drug",
"ATM",
"Medical",
"Gear",
"Robbery",
"Speedcam",
"Fuel",
"Ipad",
"Keys",
"Garage",
"Clothing",
"GPS",
"Dance",
"Statsave",
"Gang",
"Vehicle",
"Hunger",
"Hud",
"Spawn"
];

/*loads variables first for all active modules*/
{
	call compile format['call compile preprocessFileLineNumbers "functions\%1\_module.variables";', _x ];
}count dtk_active_modules;


/*loads module functions*/
{
	_functions = call compile format['call compile preprocessFileLineNumbers "functions\%1\_module.functions";', _x];
	_module = _x;
	{
		call compile format['
		%1_%2 = compile preprocessFileLineNumbers "functions\%1\%1_%2.fnc";
		',_module,_x];
		dtk_fnc_num = _forEachIndex + 1;
	}forEach _functions;
	diag_log text format ["Loaded Module - %1 With %2 Functions",_module,dtk_fnc_num];
	dtk_fnc_total = dtk_fnc_total + dtk_fnc_num;
}count dtk_active_modules;


diag_log text format ["Total Modules: %2 Total Functions: %1",dtk_fnc_total,count dtk_active_modules];

call setup_init;
if (dtk_client)then {
["ALL",[player,ar_side,getPlayerUID player],"setup_jip",false,true]call network_MPExec;
};

