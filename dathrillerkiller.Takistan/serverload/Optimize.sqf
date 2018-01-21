
{
	_array = _x;
	_name = _array select 0;
	missionNamespace setVariable [format ["dtk_%1",_name], _array];
} count dtk_master;