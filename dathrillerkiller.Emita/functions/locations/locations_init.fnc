if (dtk_server)exitWith{};
[]spawn {
	private ["_i","_loc"];

	for "_i" from 0 to 1 step 0 do 
	{
		_loc = call locations_nearest;
		if (_loc != "")then {
		["You have entered",_loc]spawn BIS_fnc_infoText;
		location_name = _loc;
		};
		waitUntil {_loc != call locations_nearest};
		sleep 5;
	};
};