if (isNil "INV_PrivateStorage" or isNil "ar_side" or isNil "ar_sidename")exitWith {systemChat "[SAVE ABORTED]Your stats have not loaded yet"};
private ["_save"];
_save = 
[player,
	[
		["Main", "BankAcount", kontostand], 
		["Main", "NAME", name player],
		["Main", "Hunger", dtk_hunger], 	
		[ar_side, "Inventory", player getVariable "dtk_storage"], 
		[ar_side, "INV_Lizenz", (player getvariable "cdb_license")], 	
		[ar_side, "VehiclesLand", INVVehiclesLand],
		[ar_side, "ARHP", ARHP], 	
		[ar_side, "ARHR", ARHR], 
		[ar_side, "Weapons", weapons player], 
		[ar_side, "Magazines", magazines player],
		[ar_side, "1_reason",(player getvariable "cdb_warrants")],
		[ar_side, "1_notes",(player getvariable "cdb_notes")],
		[ar_side, "kopfgeld_1",(player getvariable "cdb_bounty")],
		[ar_side, "INV_PrivateStorage",INV_PrivateStorage],
		[ar_side, "INVAppsInstalled",INVAppsInstalled],
		["Main", "lifestate", (lifeState player)]
	]
];

["SERVER",_save,"S_statsave_SaveToDB",false,false]call network_MPExec;
server globalchat "Player saving statics as:";
systemChat ar_sidename;








