/*
File: SpawnGas.sqf
Desc: Spawns in a gas leak for hazmat to fix
	  NOTE: DO NOT PLACE ANY "HELIH" IN THE MISSION OR CREATE ANY IT WILL BREAK THE MISSIONS
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com

	Use Without Permission is prohibited

Prams: 
	none
*/

private ["_location","_gasMarker","_gasMarker2"];

'if (isamedic or VFD_id) then {playsound "bells"};'call network_broadcast;			
'if (isamedic or VFD_id) then {player sidechat "Fire Alarm Emita Fire...Respond To A Report Of A Gas Leak!"};'call network_broadcast;
'if (isamedic or VFD_id) then {player sidechat "CHECK YOUR MAP FOR THE LOCATION AND GET TO IT QUICKLY!"};'call network_broadcast;

_location = gasspawnlocations call bis_selectrandom;  
GasObject = createVehicle ["HeliH", _location, [], 0, "CAN_COLLIDE"];
GasObject setVehicleInit "hideobject this;"; 
processInitCommands;
	
_gasMarker = createMarker ["EMSMissionMrk1",_location];
_gasMarker setMarkerShape "ELLIPSE";
_gasMarker setMarkerSize [80,80];
_gasMarker setMarkerColor "ColorYellow";

_gasMarker2 = createMarker ["EMSMissionMrk2",_location];
_gasMarker2 setMarkerType "Warning";
_gasMarker2 setMarkerColor "ColorBlack";
"EMSMissionMrk2" setMarkerText "!!! GAS !!!";
	
while {(count allMissionObjects "HeliH") > 0} do
{
	gasLeakObj = "SmokeShellYellow" createVehicle _location;
	sleep 25;
};