private ["_art","_item","_vcl","_type"];

_art 	= _this select 0;
_item 	= _this select 1;
_vcl	= vehicle player;
_type	= typeof _vcl;

if(_art == "use")then

{

if(_vcl == player)exitwith{systemChat  "you must be in a vehicle"};
if(_vcl iskindof _type call INV_getitemTypeKg > 2)exitwith{systemChat  "You cannot tune this vehicle"};
if(_vcl iskindof "Motorcycle")exitwith{systemChat  "You cannot upgrade this!"};
if(_vcl iskindof "land")exitwith{systemChat  "You cannot upgrade vehicles with this!"};
if(_vcl iskindof "air")exitwith{systemChat  "You cannot upgrade air vehicles!"};
if (!(player == driver vehicle player)) exitWith {systemChat  "You must be the driver to tune this";};
_check = _vcl getVariable "tuning";

	if(_item == "boatupgrade1") then 
	{
	systemChat  "Tuning boat...";
	_vcl setfuel 0;
	sleep 6;
	_vcl setfuel 1;
	_vcl setvariable ["tuning", 1, true];
	systemChat  "Boat tuned!";
	}; 

	if(_item == "boatupgrade2") then 
	{ 
	if(isNil "_check") exitwith {systemChat  "You must first tune with Bilge Pumps!"};
	systemChat  "tuning vehicle...";
	_vcl setfuel 0;
	sleep 7;
	_vcl setfuel 1;
	_vcl setvariable ["tuning", 2, true];
	systemChat  "vehicle tuned!";
	}; 

[player,_item,-1] call storage_add;
};
