/*
File: fn_Garage.sqf
Desc: Alows players to get vehicles out of their garage at their house
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	0. Loction (OBJ)
*/

waitUntil {createDialog "liste_1_button"};
{
	_Loaction = _this select 0;
	_Array = _x + [_Loaction];
	_Scriptname = (_x select 0);
	_trunk = (_x select 1);
	_upgrades = (_x select 2);
	_name = _Scriptname call inv_getitemname;
	_index = lbAdd [1, format["Name: %1 Trunk: %2 SpeedUpgrade: %3", _name, _trunk,_upgrades]];															
	lbSetData [1, _index,format ['%1',_Array]];	
}forEach INVVehiclesLand;

ctrlSetText [221, "Retrive Vehicle"];

buttonSetAction [221,"
_Array = call compile (lbData [1, (lbCurSel 1)]); 
_Scriptname = _Array select 0;
_trunk = _Array select 1;
_upgrades = _Array select 2;
_Loaction = _Array select 3;

[_Scriptname,_Loaction,player,ar_side]call shops_createVehicle;
	[_trunk,_upgrades]spawn
	{
		INVVehiclesLand set [(lbCurSel 1),-1];
		INVVehiclesLand = INVVehiclesLand - [-1];
		sleep 0.1;
		newvehicle setvariable ['tuning', (_this select 1), true]; 
		closeDialog 0;
		newvehicle attachTo [player,[2,2,4]];
		dropVehicleVar = true;
	};
"];