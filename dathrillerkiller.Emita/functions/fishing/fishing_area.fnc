private ["_pos","_size","_data","_return","_fish"];

_return = 
{
	_data = _x getVariable ["fishing",[[0,0,0],0,[]]];

	_pos = _data select 0;		
	_size = _data select 1;
	_fish = _data select 2;
	if (player distance _pos < _size)exitWith {
		_fish
	};
	(v_types call BIS_selectRandom)
}forEach allMissionObjects "BuoyBig";

_return

