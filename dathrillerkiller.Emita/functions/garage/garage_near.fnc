private ["_return"];
_return = false;
{
	if (player distance _x < 7)then {_return = true};
}forEach v_garages;


_return
