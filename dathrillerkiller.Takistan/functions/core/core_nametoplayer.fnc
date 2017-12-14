private ["_return"];

_return = {
if (name _x == _this)exitWith {_x};
_return = objNull;
}count playableUnits;

_return