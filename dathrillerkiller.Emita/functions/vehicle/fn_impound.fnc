/*
File: fn_impound.sqf
Desc: Impounds vehicles saves the vehicle trunk and upgrades when impounded.
	  Not complete yet plans to add a Pram for the spawn to seprate the Air,Water, and land vehicle impound lot
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	0. Vehicle you are impounding
	1. action (impound or nothing if your retriving a vehicle)
	3. Kind of vehicle you are trying to retrive
*/

private ["_classname","_Kind","_vcl","_Action","_VclVar","_UID","_Scriptname","_Playerside","_trunk","_speedupgrade","_CurrentArray","_name","_index","_nameimp"];

_vcl = _this select 0;
_Action = _this select 1;
_Kind = _this select 2;

if (_Action == "impound")then
{

		_VclVar = (_vcl getVariable "DTK_OwnerUID");
		_UID = (_VclVar select 0 select 0);
		_Scriptname = (_VclVar select 1);
		_Playerside = (_VclVar select 2);
		_nameimp = if (dtk_server)then {"Server Cleaner"}else {(name player)};
			
		_trunk = _vcl getVariable "dtk_storage";
		_speedupgrade = _vcl getvariable "tuning";
			
		if (isNil "_trunk")then {_trunk = [[],[]];};
		if (isNil "_speedupgrade")then {_speedupgrade = 0;};
			
		INVVehiclesImpoundArray set [count INVVehiclesImpoundArray, [_UID,_Scriptname,_Playerside,_trunk,_speedupgrade]];
		publicvariable "INVVehiclesImpoundArray";
		deleteVehicle _vcl;
		if !([player,_vcl]call keys_has)then {[player,"geld",2000] call storage_add; systemChat "You have been pain 2000$ for impounding that vehicles"};
		["ALL",["true",format ["%1 has impounded %2",_nameimp, _vcl],3],"network_chat",false,false]call network_MPExec;
		
		["SERVER",[],"s_vehicle_saveimpound",false,false]call network_MPExec;
}
else
{
	waitUntil {createDialog "liste_1_button"};
	
	for [{_i=0}, {_i < (count INVVehiclesImpoundArray)}, {_i=_i+1}] do 
	{
		_CurrentArray = (INVVehiclesImpoundArray select _i);
		_UID = (_CurrentArray select 0); 
		_Scriptname = (_CurrentArray select 1);
		_classname = _Scriptname call INV_getitemClassName;		
		_Playerside = (_CurrentArray select 2);
		_trunk = (_CurrentArray select 3);
		_speedupgrade = (_CurrentArray select 4);
		_name = _Scriptname call inv_getitemname;
		
		if (getPlayerUID player == _UID and _Playerside == ar_side)then
		{
			if (_classname isKindOf _Kind)then
			{
			_index = lbAdd [1, format["Name: %1 Trunk: %2 SpeedUpgrade: %3", _name, _trunk,_speedupgrade]];															
			lbSetData [1, _index,format ['%1',_CurrentArray + [_i]]];	
			};
		};
	};

	ctrlSetText [221, "Retrive Vehicle"];

	buttonSetAction [221,"
	_Array = call compile (lbData [1, (lbCurSel 1)]); 
	_Scriptname = _Array select 1;
	_trunk = _Array select 3;
	_upgrades = _Array select 4;
	_ArrayNumber = _Array select 5;
	
	INVVehiclesImpoundArray SET [_ArrayNumber,''];
	INVVehiclesImpoundArray = INVVehiclesImpoundArray - [''];
	publicVariable 'INVVehiclesImpoundArray';
	
	[_Scriptname,impoundarea2,player,ar_side]call shops_createVehicle;
		[_trunk,_upgrades]spawn
		{
			sleep 0.1;
			newvehicle setvariable ['tuning', (_this select 1), true]; 
			newvehicle setvariable ['dtk_storage',(_this select 0), true]; 
			closeDialog 0;
			['SERVER',[],'s_vehicle_saveimpound',false,false]call network_MPExec;
		};
	"];
};
