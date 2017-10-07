/*
File: test.sqf
Desc: Logs things to a console and log file
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com

	Use Without Permission is prohibited

Prams: 
	none
*/

_ColorLogWrite = (_this select 0);
_LogString = (_this select 1);

"debug_console" callExtension (_LogString + "~0001");