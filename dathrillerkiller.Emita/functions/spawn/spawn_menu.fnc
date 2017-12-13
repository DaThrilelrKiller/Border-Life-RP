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

_index = lbAdd [1401, "                         Spawns"];
_index = lbAdd [1401, "======================================================="];

waitUntil {!isNil 'AR_Whitelistloaded'};
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

buttonSetAction [1601, "call spawn_setPos;"];

[]spawn spawn_animatemap;