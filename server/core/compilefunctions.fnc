private ["_Funcitons"];
PG_SSF = [];

_Funcitons = 
[
["drug","GrowLoop","DaThrillerKiller\drugs",false],
["drug","burnplant","DaThrillerKiller\drugs",false],
["gang","capturearea","DaThrillerKiller\gangs",false],
["ems","buildingcolapes","ems",false],
["ems","fire","ems",false],
["ems","gasleak","ems",false],
["ems","missionloop","ems",false],
["main","SetupMap","main",false],
["main","ServerCleaner","main",false],
["vehicle","OwnerOnline","vehicle",false],
["vehicle","saveimpound","vehicle",false]
];

{
	if (_x select 3)then
	{
		call compile format['%1_%2 = compile preprocessFileLineNumbers "\MPMissions\server\core\functions\%3\fn_%2.fnc";
		PG_SSF set[count PG_SSF,"%1_%2"];
		', _x select 0, _x select 1,_x select 2];
	}
	else
	{
		call compile format['S_%1_%2 = compile preprocessFileLineNumbers "\MPMissions\server\core\functions\%3\fn_%2.fnc";', _x select 0, _x select 1,_x select 2];
	};

}count _Funcitons;
