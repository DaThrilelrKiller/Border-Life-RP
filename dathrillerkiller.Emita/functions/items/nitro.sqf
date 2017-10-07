private ["_art","_item","_vcl","_type"];
_art = _this select 0;

if (_art == "use") then

{

_item   = _this select 1;
_vcl  	= vehicle player;
_type	= typeof _vcl;

if(_vcl getvariable "nitro" == 1)exitwith{systemChat  "this vehicle already has nitro installed"};
if (player == _vcl) exitWith {systemChat  localize "STRS_inv_items_speed_car"};
if (!(_vcl iskindof "car") or _type call INV_getitemTypeKg > 2) exitWith {systemChat  localize "STRS_inv_items_speed_no";};

systemChat  "tuning vehicle...";
_vcl setfuel 0;
sleep 10;
_vcl setfuel 1;
_vcl setvariable ["nitro", 1, true];
systemChat  "vehicle tuned!";
sleep 2;
systemChat  "press and hold shift to activate nitro";
[player,_item,-1] call storage_add;

};



