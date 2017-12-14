private ["_pole","_camera","_item","_advanced","_side"];

_item = _this select 1;
_side = _this select 3;
_side = [_side,dtk_side]select isNil "_side";

_advanced = [false,true]select (_item in ["camera_advanced"]);

_pole = "MAP_sloupyelA" createVehicle [0,0,0];
_camera = "MAP_misc_videoprojector" createVehicle [0,0,0];
_camera attachTo [_pole,[0.4,0.14,2.41]];

_pole setPos getPos player;
_pole setDir getDir player;
_camera setVariable ["camera",[_advanced,_side],true];

[player,_item,-1] call storage_add;
