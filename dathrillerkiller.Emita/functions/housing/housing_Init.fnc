/*
File: HouseInit.sqf
Desc: Creates and updates map markers when a player buys a house
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	none
*/

if (dtk_server)exitWith {};

private["_HouseID","_housesobj","_Owner","_name","_marker","_preHouseID","_prename"];

{
	_preHouseID = (_x select 0);
_prename = format["%1_mrk",_preHouseID];	
	deleteMarkerLocal _prename;
}count PureHouses;

{
	_HouseID = (_x select 0);
	_housesobj = (_x select 3) nearestObject _HouseID;
	_Owner = (_x select 2);
	_name = if (_Owner != "")then {_Owner}else {"Vancant House"};
	_marker = createMarkerLocal[format["%1_mrk",_HouseID], [-100, -100]];																																																						
	_marker setMarkerShapeLocal  "ICON";				
	_marker setMarkerTypeLocal  "Dot";				
	_marker setMarkerColorLocal "ColorBlack";																										
	_marker setMarkerSizeLocal  [1.2, 1.2];			
	_marker setMarkerTextLocal format["House -%1" ,_name];		
	_marker SetMarkerPosLocal (getPos _housesobj);	
}count PureHouses;

housing_init_done = true;