

if !(time - dtk_action_time < 5)exitWith {
titletext["Actions Recently Refreshed. Please wait 5 seconds", "PLAIN DOWN"];
};


dtk_action_time = time;

if (isNil "dtk_action_id")then {dtk_action_id = 0};
_temp = player addAction ["",""];

for "_i" from dtk_action_id to _temp do
{
	player removeAction _i;
};

dtk_action_id = _temp;

call compile preprocessFile format ['actions\%1actions.sqf',dtk_side];