
/*
File: fn_neardrug.sqf
Desc: Allows player to harvest plants that are fully grown
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	_this select 0 - STRING the typeOf plant you are trying to harvest
*/



private ["_planttype","_return","_plant","_Zpos2"];
_planttype = _this;
_return = false;
_plant = (nearestobjects [getpos player, [_planttype], 5] select 0);

if (!isNil "_plant")then
{
_Zpos2 = getPos _plant select 2;
if (_Zpos2 > 0) then {_return = true;};
};

_return