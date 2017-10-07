/*
File: fn_BuyHouse.sqf
Desc: Allows the players to buy a house if no one owns it already.
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	0. The house string with ID that they are trying to buy
*/


private ["_buyhouse","_BuyHouseID","_houses","_HouseID","_OwnerID","_OwnerName","_exit","_i","_housesobj"];
if (call housing_AlreadyOwnsHouse)exitWith {systemChat "you already own a house";};

_buyhouse = str (_this select 0);
_BuyHouseID = (_buyhouse call housing_GetBuildingID);
_exit = false;

_houses = PureHouses;

for "_i" from 0 to (count _houses)-1 do
{
	_HouseID = (_houses select _i select 0);
	_OwnerID = (_houses select _i select 1);
	_OwnerName = (_houses select _i select 2);
	if (_HouseID == _BuyHouseID)then
	{
		if (_OwnerID != "")then 
		{
		systemChat "Someone already owns this house";
		_exit = true;
		}
		else
		{
			_houses set [_i,[_HouseID,(getPlayerUID player),name player]];
			PureHouses = _houses;
			publicVariable "PureHouses";
			_housesobj = (getPos player) nearestObject _HouseID;
		};
	};
};

if (_exit) exitWith {};

/*eventaly add prices for each type of house*/

