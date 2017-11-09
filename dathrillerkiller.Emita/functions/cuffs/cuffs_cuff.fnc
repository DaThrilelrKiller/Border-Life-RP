private ["_player","_cuffed"];

_player = _this select 0;
_cuffed = _player getVariable "ar_cuffed";


if (isNil "_cuffed" || {!_cuffed})then
{
	["ALL",[_player,"actspercmstpsnonwrfldnon_interrogate02_forgoten"],"network_SwitchMove",false,true]call network_MPExec;
	_player setVariable ["ar_cuffed",true,true];
	[player,format['cuffed %1',name _player],[0.95,0.88,0,1]]call admin_logs_add;
	[_player,[],"cuffs_cuffloop",true,false]call network_MPExec;
	[_player]execVM "FUNCTIONS\ITEMS\IDcard.sqf"
}
else
{
	_player setVariable ["ar_cuffed",false,true];
};