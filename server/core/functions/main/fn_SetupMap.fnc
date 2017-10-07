/*
File: fn_SetupMap.sqf
Desc: Used to remove buildings from a map. Completly server side. better for performance
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com

	Use Without Permission is prohibited

Prams: 
	none
*/

waitUntil {time > 0};
waitUntil {count playableUnits > 0};
for [{_i=0}, {_i < (count removeBuilgings)}, {_i=_i+1}] do 
{
	_pos = removeBuilgings select _i select 0;
	_buildingID =  removeBuilgings select _i select 1;
		{
			_rb4h = _pos nearestObject _x;
			_rb4h attachTo [MapCleanObjects, [0, 0, 0]];
			_rb4h allowDamage false;
		}forEach _buildingID;
};