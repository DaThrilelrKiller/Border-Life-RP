private ["_Object","_Sound","_Range"];
_Object = _this select 0;
_Sound = _this select 1;    
_Range = _this select 2; 

PVEH_netSay3D = [_Object,_Sound,_Range];
publicVariable "PVEH_netSay3D";

if (player distance _Object < _Range)then {_Object say3D _Sound};