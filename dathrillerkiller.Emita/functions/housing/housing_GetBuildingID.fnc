/*
File: fn_GetBuildingID.sqf
Desc: Gets the building ID to allows us to ealsy store who owns the house and get its positon
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	0. String of the building with its ID
*/

private ["_Building","_Array","_temp","_found","_i","_index","_return"];

_Building = _this;
_Array = toArray _Building;
_temp = [];
_found = 0;


for "_i" from 0 to (count _array)-1 do
{
	_index = _array select _i;
	if((_index == 32) and (_found == 0)) then {_found = 1;};
	if((_index == 58) and (_found == 1)) then {_found = 3;};
	if ((_found == 1) and (_index != 32))then {_temp set [count _temp,_index];};
};

_return = parseNumber toString _temp;
_return