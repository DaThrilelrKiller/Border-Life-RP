private ["_time","_function"];

for "_i" from 0 to 500 step 1 do 
{

	{
		_time = _x select 0;
		if (_i % _time == 0) then {
			_function = _x select 1;
			call _function;
		};

	}count core_loop_array;
	uiSleep 1;
if (_i == 500)then {_i = 0;};
};