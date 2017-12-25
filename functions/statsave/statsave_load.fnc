private ["_apps","_uid","_MainArray","_player","_data","_array","_side","_file","_name","_value"];
_side = _this select 1;
_uid = getPlayerUID(_this select 0);
_player = (_this select 0);
_apps = switch(_side)do{ case "CIV":{["app_store","app_store","app_settings","app_save","app_dmv","app_laws","app_civilian"]}; case "EMS": {["app_store","app_store","app_settings","app_save","app_dmv","app_laws","app_civilian"]}; case "PD":{["app_store","app_store","app_settings","app_save","app_dmv","app_laws","app_civilian","app_computer"]}; };

_array = 
[
	["Main", "BankAcount",45000],
	[_side, "Hunger",25], 
	[_side, "Inventory",[["schluesselbund","idcard"],[1,1]]], 
	[_side, "INV_Lizenz", []], 
	[_side, "VehiclesLand",[]], 
	[_side, "VehiclesAir", []], 
	[_side, "VehiclesWater", []], 
	[_side, "Weapons",[]], 
	[_side, "Magazines",[]], 
	[_side, "Pistol",""], 
	[_side, "Rifle",""],
	[_side, "x26",""],
	[_side, "1_reason",[]],
	[_side, "1_notes",[]],
	[_side, "kopfgeld_1",0],
	[_side, "INV_PrivateStorage",[]],
	[_side, "INVAppsInstalled",_apps],
	["Main", "lifestate",""],
	["Main", "distance",800],
	["Main", "detail",50],
	[_side, "seasion",[]]
];

_data = [_uid];

{
	_array = _x;
	_file = _array select 0;
	_name = _array select 1;
	_value = _array select 2;
	_data set [count _data,([_uid, _file, _name,_value] call S_statsave_read)];
	true
}count _array;

[_player,_data,"statsave_loadacount",false,false]call network_MPExec;
