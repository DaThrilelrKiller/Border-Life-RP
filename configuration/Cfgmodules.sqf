private ["_modules","_functions"];
PG_SSF = [];

dtk_server_modules = 
[
"Statsave",
"OwlEye",
"Robbery",
"Map",
"Setup",
"Drugs",
"Gang",
"Impound",
"Core"
];

/*loads variables first for all active modules*/
{
	call compile format['call compile preprocessFileLineNumbers "\MPMissions\functions\%1\_module.variables";', _x ];
}count dtk_server_modules;

/*loads module functions*/ 
{
	_functions = call compile format['call compile preprocessFileLineNumbers "\MPMissions\functions\%1\_module.functions";', _x];
	_module = _x;
	{
		_name = _x select 0;
		_client = _x select 1;
		if (_client)then
		{
			call compile format['%1_%2 = compile preprocessFileLineNumbers "\MPMissions\functions\%1\%1_%2.fnc";PG_SSF set[count PG_SSF,"%1_%2"];',_module,_name];
		}
		else
		{
			call compile format['S_%1_%2 = compile preprocessFileLineNumbers "\MPMissions\functions\%1\%1_%2.fnc";',_module,_name];
		};
	}forEach _functions;
}count dtk_server_modules;

[]call s_setup_init;
[] execVM "\MPMissions\initServer.sqf";

