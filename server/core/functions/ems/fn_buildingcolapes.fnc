/*
File: SpawnBuildingColapes.sqf
Desc: Spawns in a building colapes for EMS to search for  a missing person
	   NOTE: DO NOT PLACE ANY "HELIH" IN THE MISSION OR CREATE ANY IT WILL BREAK THE MISSIONS
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com

	Use Without Permission is prohibited

Prams: 
	none
*/

private ["_Cords","_fireMarker","_fireMarker2","_cityCords","_BuildingArray","_Building","_BuildingObj","_pos"];


selectingbuilding = true;
 
_BuildingArray = nearestObjects [BuildingCollapesLogic, ["Building"], 200000];
while {selectingbuilding} do 
{
	_BuildingObj = _BuildingArray call bis_selectrandom;
	if (_BuildingObj in INV_ServerBuildingArray)then
	{
		
	}
	else
	{
		 selectingbuilding = false;
	};
};


_BuildingObj setDamage 1;
_pos = getPos _BuildingObj;

FireObject = createVehicle ["HeliH", _pos, [], 0, "CAN_COLLIDE"];
FireObject setVehicleInit "hideobject this;"; 
processInitCommands;

_group = createGroup east;
rescue1 = _group createUnit ["Functionary1_EP1", _pos, [], 15, "FORM"]; 
rescue1 setvehicleinit 'rescue1 = this;this setVehicleVarName "rescue1";';
processInitCommands;


'if (isamedic) then {playsound "bells"};'call network_broadcast;			
'if (isamedic) then {player sidechat "Fire Alarm Emita Fire...Respond To A Report Of A Building Collapse!"};'call network_broadcast;
'if (isamedic) then {player sidechat "CHECK YOUR MAP FOR THE LOCATION AND GET TO IT QUICKLY!"};'call network_broadcast;
	
_fireMarker = createMarker ["EMSMissionMrk1", _pos];
_fireMarker setMarkerShape "ELLIPSE";
_fireMarker setMarkerSize [80,80];
_fireMarker setMarkerColor "ColorOrange";

_fireMarker2 = createMarker ["EMSMissionMrk2", _pos];
_firemarker2 setMarkerType "Warning";
_fireMarker2 setMarkerColor "ColorBlack";
"EMSMissionMrk2" setMarkerText "!!! Building Collapse !!!";

