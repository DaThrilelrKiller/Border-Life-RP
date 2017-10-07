/*
File: fn_AlreadyOwnsHouse.sqf
Desc: Checks to see if the players already own a house
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	none
*/


private ["_houses","_OwnerID","_return"];

_houses = PureHouses;
_return = false;
{
_OwnerID = (_x select 1);
if (_OwnerID == (getPlayerUID player))then {_return = true};
}count _houses;

_return
