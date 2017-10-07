/*
File: fn_harvest.sqf
Desc: Allows player to harvest plants that are fully grown
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	_this select 0 - OBJECT that you are trying to harvest
	_this select 1 - STRING Seed script naem
	_this select 2 - STRING Drug script name
*/



private ["_plant","_seed","_drug","_drugname","_kg","_drugAmount","_seedAmount"];

_plant = _this select 0;
_seed = _this select 1;
_drug = _this select 2;
_drugname = _drug call INV_getitemName;
_kg = [player]call storage_kg;
		
if (_kg > 59) exitwith { systemChat  localize "STRS_inv_buyitems_get_zuschwer"; };
deletevehicle _Plant;

_drugAmount = ((floor random 4) + 1);
_seedAmount = ((floor random 1) + 1);
		
[player,_drug,_drugAmount] call storage_add;
[player,_seed,_seedAmount] call storage_add;
		
systemChat format ["You harvested a %1 plant",_drugname];