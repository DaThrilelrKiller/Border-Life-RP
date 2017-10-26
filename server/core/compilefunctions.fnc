private ["_Funcitons"];

_Funcitons = 
[
["drug","GrowLoop","DaThrillerKiller\drugs"],
["drug","burnplant","DaThrillerKiller\drugs"],
["gang","capturearea","DaThrillerKiller\gangs"],
["ems","buildingcolapes","ems"],
["ems","fire","ems"],
["ems","gasleak","ems"],
["ems","missionloop","ems"],
["main","SetupMap","main"],
["main","ServerCleaner","main"],
["vehicle","OwnerOnline","vehicle"],
["vehicle","saveimpound","vehicle"]
];

{
	call compile format['S_%1_%2 = compile preprocessFileLineNumbers "\MPMissions\server\core\functions\%3\fn_%2.fnc";', _x select 0, _x select 1,_x select 2];
}count _Funcitons;
