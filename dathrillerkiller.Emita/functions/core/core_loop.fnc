private ["_time","_function"];

for "_i" from 0 to 1000 step 0.5 do 
{

	{
		_time = _x select 0;
		if (_i % _time == 0) then {
			_function = _x select 1;
			call _function;
		};

	}count core_loop_array;
	uiSleep 0.5;
if (_i == 1000)then {_i = 0;};
};