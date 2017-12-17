if (isNil "dtk_seasion" or isNil "dtk_side" or isNil "dtk_sidename")exitWith {systemChat "[SAVE ABORTED]Your stats have not loaded yet"};
private ["_save"];
_save = 
[player,
	[
		["Main", "BankAcount", kontostand], 
		["Main", "NAME", name player],
		["Main", "Hunger", dtk_hunger], 	
		[dtk_side, "Inventory", player getVariable "dtk_storage"], 
		[dtk_side, "INV_Lizenz", (player getvariable "cdb_license")], 	
		[dtk_side, "VehiclesLand", INVVehiclesLand],
		[dtk_side, "Pistol", (player getVariable ["Pistol",""])], 	
		[dtk_side, "Rifle", (player getVariable ["Rifle",""])], 
		[dtk_side, "Weapons", weapons player], 
		[dtk_side, "Magazines", magazines player],
		[dtk_side, "1_reason",(player getvariable "cdb_warrants")],
		[dtk_side, "1_notes",(player getvariable "cdb_notes")],
		[dtk_side, "kopfgeld_1",(player getvariable "cdb_bounty")],
		[dtk_side, "INV_PrivateStorage",INV_PrivateStorage],
		[dtk_side, "INVAppsInstalled",INVAppsInstalled],
		["Main", "lifestate", (lifeState player)],
		[dtk_side, "seasion", [s_seasion,time,getPos player]]
	]
];

["SERVER",_save,"S_statsave_save",false,false]call network_MPExec;
server globalchat "Player saving statics as:";
systemChat dtk_sidename;








