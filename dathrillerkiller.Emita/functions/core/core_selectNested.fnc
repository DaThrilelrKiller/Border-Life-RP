private ["_array","_selection"];

_array = _this select 0;
_selection = _this select 1;

{
	_array = _array select _x;
	true
}count _selection;

_array