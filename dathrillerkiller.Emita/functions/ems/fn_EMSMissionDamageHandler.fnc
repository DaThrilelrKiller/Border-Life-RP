/*
File: fn_EMSMissionDamageHandler.sqf
Desc: Handler for EMS missions to do damage to near players not in protective gear
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
 0. Mission Type (Auto called from Public Variable)
*/

private ["_Mission","_WarningText","_Playertypes","_EMSObj"];
_Mission = _this;

switch(_Mission)do
{
	case "Fire":
	{
		_WarningText = "You are being burnt from the fire get out immediately";
		_Playertypes = ["a2l_firefighter1","a2l_firefighter"];
	};
	case "Gas":
	{
		_WarningText = "You are taking damage from a gas leak leave the area";
		_Playertypes = ["hazmatRed","hazmatYellow"];
	};
	case "Collapes":
	{
		_WarningText = "You are near a building collapes";
		_Playertypes = [];
	};
};

while {(count allMissionObjects "HeliH") > 0} do
{
	_EMSObj = (nearestObjects [player, ["HeliH"], 15]select 0);
	if (!isNil "_EMSObj")then
	{
		if (not(alive player)) exitWith {};
		if ((count _Playertypes < 1) or ((typeOf player) in _Playertypes)) exitWith {};
		titleText [_WarningText,"PLAIN DOWN"]; titleFadeOut 4;
		player setDamage ((damage player) + 0.1);				
	};
	sleep 4;
};