/*
File: fn_MyCookie.sqf
Desc: displays a fortune saying to the user
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	_this a string of the forture
*/

private ["_ui","_Main"];
disableSerialization;

549 cutRsc ["MyCookie","PLAIN"];
	
_ui = uiNameSpace getVariable "MyCookie";
_Main = _ui displayCtrl 1200;
_Main ctrlSetStructuredText parseText _this;
_Main ctrlCommit 2;