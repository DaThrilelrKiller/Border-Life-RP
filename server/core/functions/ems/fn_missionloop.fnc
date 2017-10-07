/*
File: EMSMissions.sqf
Desc: Used to spawn in EMS missions if there are whitelisted players online to do them
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com

	Use Without Permission is prohibited

Prams: 
	none
*/

sleep 100;
[]spawn
{
	private ["_i"];
	for "_i" from 0 to 1 step 0 do 
	{
			firefighterarray = ["a2l_firefighter1","a2l_firefighter","hazmatRed","hazmatYellow"];
			EMTOnline = false;
			{
				if !(isNull _x) then
				{
					if ((typeOf _x) in firefighterarray)then{EMTOnline = true;};
				};
			}count playableUnits;

		_MissionActive = if ((count allMissionObjects "HeliH") == 0)then {false}else {true};
		if (_MissionActive and !(EMTOnline)) then
		{
			{
				deleteVehicle _x;
			}count allMissionObjects "HeliH";
			deleteMarker "EMSMissionMrk1";
			deleteMarker "EMSMissionMrk2";
		};
		if (EMTOnline and !(_MissionActive)) then
		{
			_num = floor (random (3));	
			if (_num == 0) then
			{
				[]call S_ems_fire;
				EMSMissionType = "Fire";
			};
			
			if (_num == 1) then
			{
				[]spawn S_ems_gasleak;
				EMSMissionType = "Gas";
			};
			if (_num == 2) then
			{
				[]spawn S_ems_buildingcolapes;
				EMSMissionType = "Collapes";
			};
			publicVariable "EMSMissionType";			
		};
		sleep 900;
	};
};
