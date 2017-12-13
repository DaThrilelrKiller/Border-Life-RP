private ["_return"];

_return = [];
{
	_return set [count _return,_x call INV_getitemName];
}forEach _this;

_return