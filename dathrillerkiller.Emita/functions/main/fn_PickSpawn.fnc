/*
File: fn_PickSpawn.sqf
Desc: Allows players to pick where they want to spawn (difrent spawns will show depending on what they are whitelisted for)
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	none
*/
(findDisplay 1600) displaySetEventHandler ["keyDown","_this call display_keypress"];

private ["_index","_c","_Marker","_Name","_Posions","_index"];

_index = lbAdd [1401, "                     SFG Spawns"];
_index = lbAdd [1401, "======================================================="];

waitUntil {!isNil 'SpawnPoints'};

for [{_c=0}, {_c < (count SpawnPoints)}, {_c=_c+1}] do 
{
_Marker = (SpawnPoints select _c select 0);
_Condition = call compile(SpawnPoints select _c select 1);
if (_Condition)then
{
_Name = markerText _Marker;
_Posions = str(getMarkerPos _Marker);
_index = lbAdd [1401, _Name];
lbSetData [1401, _index, _Posions];	
};
};

buttonSetAction [1601, "

_array = call compile lbData [1401, (lbCurSel 1401)];
if (isNil '_array') exitWith {
ctrlSetText [1601, 'Spawn not Valid'];
	[]spawn
	{
	sleep 3;
	ctrlSetText [1601, 'Spawn'];
	};
};
player setPos _array; 
player setUnconscious false;
player allowDamage true;
['ALL',[player,' '],'network_SwitchMove',false,true]call network_MPExec;
[-2, {_this allowDamage true;}, player] call CBA_fnc_globalExecute;
closeDialog 0;
	[_array]spawn
	{
	_array = _this select 0;
	sleep 0.3;
	player setPos _array; 
	player setPos _array; 
	'dynamicBlur' ppEffectAdjust [0]; 
	'dynamicBlur' ppEffectCommit 4; 
	sleep 10;
	'dynamicBlur' ppEffectEnable false; 
	};
"];

while {ctrlVisible 10023} do
{
disableSerialization; 
_cursel = (lbCurSel 1401);
waitUntil {(lbCurSel 1401) != _cursel};
_grid = call compile lbData [1401, (lbCurSel 1401)];
	if (!isNil "_grid")then
	{
		_ctrl = (findDisplay 1600) displayCtrl 10023;
		_ctrl ctrlMapAnimAdd [1,0.5,_grid];
		ctrlMapAnimCommit _ctrl;
	};
};