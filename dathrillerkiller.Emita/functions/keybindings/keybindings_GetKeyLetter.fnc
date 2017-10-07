/*
File: fn_getKeyLetter.sqf
Desc: Converts key letter to KeyCode
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	_this select 0 - STRING Letter you are trying to convert
*/



private ["_return"];
{
if ((_x select 1) == _this)then {_return = _forEachIndex};
}forEach KeyLetters;

_return