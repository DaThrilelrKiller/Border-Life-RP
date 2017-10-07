/*
File: fn_OwnsHouse.sqf
Desc: returns the ID of a building 
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	0. Building (OBJ)
*/

private ["_houses","_return","_house","_BuyHouseID"];

_house = str(_this select 0);
if (isNil "_house")exitWith {false};
_BuyHouseID = (_house call housing_GetBuildingID);
_houses = PureHouses;

{
	if (_BuyHouseID == (_x select 0))then
	{
	_house = _this select 0;
	_return = if ((_x select 1) == (getPlayerUID player))then {true}else {false};
	};
}count _houses;

_return