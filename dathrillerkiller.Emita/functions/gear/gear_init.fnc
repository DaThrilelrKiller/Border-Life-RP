/*
File: gear_init.fnc
Desc: init for the gear module, automaticly inilized by the DTK (DaThrillerKiller) Framework
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
none
*/
if (dtk_server)exitWith {};

[]spawn gear_handler;
gear_init_done = true;