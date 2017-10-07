/*
File: fn_FixGas.sqf
Desc: Used to gass leaks the more people you have the faster it goes
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	none
*/

private ["_nearLeak","_completPer","_text"];

EMSMissionAction = true;

while {(count allMissionObjects "HeliH") > 0} do
{
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	waitUntil {animationState player == "AinvPknlMstpSlayWrflDnon_medic"};
	
	_nearLeak = (nearestObjects [player, ["HeliH"], 10]select 0);
	if (!isNil "_nearLeak")then
	{
		_nearLeak setDamage (damage _nearLeak + random 0.09);
		if !(damage _nearLeak < 1)then
		{
			deleteVehicle _nearLeak;
			systemChat "The Gas Leak Has Been Fixed!";
			halfwaythereallfiredup = false;
			deleteMarker "EMSMissionMrk1";
			deleteMarker "EMSMissionMrk2";
			[player,"geld",5000] call storage_add;
			systemChat "You Have Been Paid $5,000 For Fixing The Gas Leak!";
		};
	};
	waitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
	_completPer = round((damage _nearLeak)*100);
	_text = format ['The Leak is %1%2 contained',_completPer,"%"];
	titletext [_text, "PLAIN DOWN"];
};

EMSMissionAction = false;
