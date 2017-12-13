/*
File: fn_CleanUpBuildingCollapes.sqf
Desc: Used to fix a building colapes the more people you have fixing it the faster it goes
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
			deleteMarker "EMSMissionMrk1";
			deleteMarker "EMSMissionMrk2";
			rescue1 setDamage 1;
			deleteVehicle rescue1;
			[player,"geld",2000] call storage_add;
			systemChat "You have been paid 2,000$ for responding to this building collapes";
		};
	};
	waitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
	_completPer = round((damage _nearLeak)*100);
	_text = format ['Search is %1%2 complete',_completPer,"%"];
	titletext [_text, "PLAIN DOWN"];
};

systemChat "The Building collapes missions are still a work in progress however this is a sneek peek at what is done so far";
EMSMissionAction = false;
