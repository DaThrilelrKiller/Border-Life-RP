private ["_unit","_side","_uid"];

_unit = _this select 0;
_side = _this select 1;
_uid = _this select 2;


if (player == _unit)exitWith {};

_uid addaction ["","noscript.sqf",'_target call core_interact;',25,false,true,"LeanRight","player distance _target < 5 && {!([_target,'Interact (E)','']call tag_show)}"];
