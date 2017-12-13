private ["_inDB","_apps","_uid","_MainArray","_player","_tempaccountToClient","_Array","_playerside","_DBSection","_varName","_loadArray","_defaultVar"];
_playerside = _this select 1;
_uid = getPlayerUID(_this select 0);
_player = (_this select 0);
_inDB = _uid call S_statsave_dbexists;
_apps = switch(_playerside)do{ case "CIV":{["app_store","app_store","app_settings","app_save","app_dmv","app_laws","app_civilian"]}; case "EMS": {["app_store","app_store","app_settings","app_save","app_dmv","app_laws","app_civilian"]}; case "PD":{["app_store","app_store","app_settings","app_save","app_dmv","app_laws","app_civilian","app_computer"]}; };

_MainArray = 
[
	["Main", "BankAcount",45000],
	[_playerside, "Hunger",25], 
	[_playerside, "Inventory",[["schluesselbund","idcard"],[1,1]]], 
	[_playerside, "INV_Lizenz", []], 
	[_playerside, "VehiclesLand",[]], 
	[_playerside, "VehiclesAir", []], 
	[_playerside, "VehiclesWater", []], 
	[_playerside, "Weapons",[]], 
	[_playerside, "Magazines",[]], 
	[_playerside, "ARHP",""], 
	[_playerside, "ARHR",""],
	[_playerside, "blank",""],
	[_playerside, "1_reason",[]],
	[_playerside, "1_notes",[]],
	[_playerside, "kopfgeld_1",0],
	[_playerside, "INV_PrivateStorage",[]],
	[_playerside, "INVAppsInstalled",_apps],
	["Main", "lifestate",""],
	["Main", "distance",800],
	["Main", "detail",50],
	[_playerside, "seasion",[]]
];

_tempaccountToClient = [_uid];

{
	_Array = _x;
	_DBSection = _Array select 0;
	_varName = _Array select 1;
	_defaultVar = _Array select 2;
	_loadArray = [_uid, _DBSection, _varName,_defaultVar];
	_tempaccountToClient set [count _tempaccountToClient,(_loadArray call S_statsave_read)];
	true
}count _MainArray;

[_player,_tempaccountToClient,"statsave_loadacount",false,false]call network_MPExec;

if !(_inDB)then {
[_player,["dtk_client",format ["%1 Welcome to Border Life Roleplay remember to read the rules if you have any questions feel free to ask an admin", name _player],3],"network_chat",false,false]call network_MPExec;
};
