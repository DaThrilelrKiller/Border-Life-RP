private ["_text","_message","_messageplay"];
_text = lbText [1000, (lbCurSel 1000)];

switch (_text) do
{
	case "Delete": 
	{
		if (cursorTarget in INV_ServerBuildingArray)exitWith {systemChat "that object cannot be deleted"};
		deleteVehicle cursorTarget;
		closeDialog 0;
		hint "OBJECT DELETED";
		_message = format['[Admin Log] Admin %1 has Deleted %2',name player, cursorTarget];
	};
	case "Teleport": 
	{
		_message = format["[Admin Log] Admin %1 has Ran Teleport!",name player];
		
		hint "Click on the map to Teleport!";
		liafu = true;
		closeDialog 0;
		openMap true;
		onMapSingleClick "onMapSingleClick """";liafu = true; (vehicle player) setpos [_pos select 0, _pos select 1, 0]; openMap false;";
	};
	case "20 Donut": 
	{
		_message = format["[Admin Log] Admin %1 has Spawned Donuts",name player];
	
		[player,"Donut",20] call storage_add;
	};
	case "Heal/Repair (3m)": 
	{
		_message = format["[Admin Log] Admin %1 has 3M Healed!",name player];
	
		_objs = (position (vehicle player) nearObjects 3); {_x setDamage 0} count _objs; closeDialog 0;
	};
	case "GPS,NVG,BINOC": 
	{
		_message = format["[Admin Log] Admin %1 has Spawned GPS,NV,Binoc",name player];
	
		player addweapon "ItemGPS";
		player addweapon "NVGoggles";
		player addweapon "Binocular";
	};
	case "World Heal": 
	{
		_message = format["[Admin Log] Admin %1 has done a World Heal",name player];
		
		_objs = (position (vehicle player) nearObjects 100000); {_x setDamage 0} count _objs;
	};
	case "Global Comp. 100k": 
	{
		_message = format["[Admin Log] Admin %1 has Global Comped for 100k",name player];
	
		["ALL",100000,"network_sendMoney",false,true]call network_MPExec;
		_messageplay = format["Admin %1 has given Global Comp for 100k", name player];
		["ALL",["SwagDevs",_messageplay,2],"network_chat",false,false]call network_MPExec;
	};
	case "Masterkey": 
	{
		_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 25];
		_vcl = _vcls select 0;
		 if (locked _vcl) then 
		 {
			 systemChat "Vehicle locked";
			[_vcl,[_vcl,false],'network_lock',false,true]call network_MPExec;
		 }
		 else
		 {
			  systemChat "Vehicle unlocked";
			  [_vcl,[_vcl,true],'network_lock',false,true]call network_MPExec;
		 };
		_message = format["[Admin Log] Admin %1 has used Masterkey on %2",name player,_vcl];
	};
	case "Set Time To 12 PM":
	{
		_message = format["[Admin Log] Admin %1 has set the time to 12 PM",name player];
		["ALL",[2013, 2, 25, 12, 0],"network_setDate",false,true]call network_MPExec;
	};
    case "Set Time To 11 PM": 
	{
		_message = format["[Admin Log] Admin %1 has set their local time to 11 PM",name player];
		["ALL",[2013, 2, 25, 23, 0],"network_setDate",false,true]call network_MPExec;
	};
    case "Spawn 100k": 
	{
		_message = format["[Admin Log] Admin %1 has Spawned 100K",name player];
	
		[player,"geld",100000] call storage_add;
	};
	case "Stat Checker": 
	{
		createDialog "StatsThing";
		_message = format["[Admin Log] Admin %1 has opned stat checker",name player];
	};	
	case "Revive" : 
	{
	
	
		[-2, {_this setUnconscious false;}, player] call CBA_globalExecute;
		player allowDamage true;
		["ALL",[player," "],"network_SwitchMove",false,true]call network_MPExec;
		_message = format["[Admin Log] Admin %1 has revived themselfs",name player];
	};
	case "Triger Fire Mission": 
	{
		_MissionActive = if ((count allMissionObjects "HeliH") == 0)then {false}else {true};
		if (_MissionActive) then
		{
			systemChat "There is already a mission active";
		}
		else
		{
			_message = format["[Admin Log] Admin %1 has started a fire mission",name player];
			["SERVER",[],"S_ems_fire",true,false]call network_MPExec;
			EMSMissionType = "Fire"; 
			publicVariable "EMSMissionType";
		};
	};	
	case "Triger Gas Leak": 
	{
		_MissionActive = if ((count allMissionObjects "HeliH") == 0)then {false}else {true};
		if (_MissionActive) then
		{
			systemChat "There is already a mission active";
		}
		else
		{
			_message = format["[Admin Log] Admin %1 has started a fire mission",name player];
			["SERVER",[],"S_ems_gasleak",true,false]call network_MPExec;
			 EMSMissionType = "Gas"; 
			 publicVariable "EMSMissionType";
		};
	};
	case "Triger Building Collapes": 
	{
		_MissionActive = if ((count allMissionObjects "HeliH") == 0)then {false}else {true};
		if (_MissionActive) then
		{
			systemChat "There is already a mission active";
		}
		else
		{
			_message = format["[Admin Log] Admin %1 has started a fire mission",name player];
			["SERVER",[],"S_ems_buildingcolapes",true,false]call network_MPExec;
			 EMSMissionType = "Collapes"; 
			 publicVariable "EMSMissionType";
		};
	};
	
	case "Dev Tool (Reset Pos Array)": 
	{
		DevToolArray = [];
	};	
	case "Dev Tool (Add Pos)": 
	{
		if (isNil "DevToolArray")then {DevToolArray = [];};
		DevToolArray set [count DevToolArray,getPos player];
		systemChat str DevToolArray;
	};
	case "Dev Tool (Save Pos Array)": 
	{
		private ["_save"];
		_save = ["Devtools", [ 	["Main", "DevToolArray", DevToolArray]]];
		["SERVER",_save,"S_statsave_SaveToDB",false,false]call network_MPExec;
		
	
	};
	default 
	{ 
		hint "Command does not exsit";
	};
};

systemChat format ["[ADMIN] (%1) command complete",_text];

if !(isNil "_message")then
{
["ALL",["SwagDevs",_message,2],"network_chat",false,false]call network_MPExec;
};