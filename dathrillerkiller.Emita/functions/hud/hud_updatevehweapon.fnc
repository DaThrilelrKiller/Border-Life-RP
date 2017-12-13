private ["_hud","_wephud","_name","_info","_mode"];

_hud = uiNameSpace getVariable "ar_hud";
_wephud = _hud displayCtrl 155;

_info = currentWeapon vehicle player;
_name = getText (configFile >> "cfgWeapons" >> _info >> "displayName");

_mode = (vehicle player) getVariable "ar_siren_mode";
_mode = if (isNil "_mode")then {""}else{_mode};

_wephud ctrlSetStructuredText parseText format [
"
%1 <br/>
%2
"
,_name
,_mode
];