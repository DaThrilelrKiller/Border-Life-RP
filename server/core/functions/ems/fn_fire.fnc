/*
File: SpawnFire.sqf
Desc: Spawns in a fire for FireFighters to put out
	  NOTE: DO NOT PLACE ANY "HELIH" IN THE MISSION OR CREATE ANY IT WILL BREAK THE MISSIONS
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com

	Use Without Permission is prohibited

Prams: 
	none
*/

private ["_location","_fireMarker","_fireMarker2"];

_location = firespawnlocations call bis_selectrandom;  
FireObject = createVehicle ["HeliH", _location, [], 0, "CAN_COLLIDE"];
FireObject setVehicleInit "i=[this,10,time,false,false] spawn BIS_Effects_Burn; hideobject this;"; 
processInitCommands;

'if (isamedic) then {playsound "bells"};'call network_broadcast;			
'if (isamedic) then {player sidechat "Fire Alarm Emita Fire...Respond To A Report Of A Large Fire!"};'call network_broadcast;
'if (isamedic) then {player sidechat "CHECK YOUR MAP FOR THE LOCATION AND GET TO IT QUICKLY!"};'call network_broadcast;
	
_fireMarker = createMarker ["EMSMissionMrk1", _location];
_fireMarker setMarkerShape "ELLIPSE";
_fireMarker setMarkerSize [80,80];
_fireMarker setMarkerColor "ColorRed";

_fireMarker2 = createMarker ["EMSMissionMrk2", _location];
_firemarker2 setMarkerType "Warning";
_fireMarker2 setMarkerColor "ColorBlack";
"EMSMissionMrk2" setMarkerText "!!! FIRE !!!";

