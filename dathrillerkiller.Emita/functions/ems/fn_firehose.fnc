/*
File: fn_firehose.sqf
Desc: Used to put our fires with the fire hose. Note the more people you have on a fire the faster it goes out
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	Automaticly passed from a event
*/

private ["_unit","_weapon","_nearfire"];

_unit = _this select 0;
_weapon = _this select 1;

if (_weapon == "FirefighterWeap2" && {_unit == player}) then
{
	if (EMSMissionType != "Fire")exitWith {};
	_nearfire = (nearestObjects [player, ["HeliH"], 10]select 0);
	if (!isNil "_nearfire")then
	{
		_nearfire setDamage (damage _nearfire + random 0.005);
		if (!halfwaythereallfiredup && {damage _nearfire > 0.50})then {systemChat "The Fire Is Half Way Contained!";halfwaythereallfiredup = true;};
		
		if !(damage _nearfire < 1)then
		{
			deleteVehicle _nearfire;
			systemChat "Put The Fire Out!";
			halfwaythereallfiredup = false;
			deleteMarker "EMSMissionMrk1";
			deleteMarker "EMSMissionMrk2";
			[player,"geld", 8000] call storage_add;			
			systemChat "You Have Been Paid 8,000$ For Putting The Fire Out!";
		};
	};
};