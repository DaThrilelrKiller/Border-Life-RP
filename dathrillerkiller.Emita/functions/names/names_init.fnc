if (dtk_server)exitWith {};
[]spawn {
setGroupIconsVisible [false, true];

while {lifeState player != "UNCONSCIOUS"} do {
{
	clearGroupIcons group _x;
	if (player distance _x < 7) then
	{
		if (_x call names_know)then
		{
			group _x addGroupIcon ["dtk_dev"];
			group _x setGroupIconParams [[1, 1, 1, 1], format ["%1", name _x], 0.7, true];
		}
		else
		{
			group _x addGroupIcon ["dtk_dev"];
			group _x setGroupIconParams [[1, 1, 1, 1], format ["%1",getPlayerUID _x], 0.7, true];
		};

    };
}forEach playableUnits;
sleep 1;
};

waitUntil {lifeState player != "UNCONSCIOUS"};
[]spawn names_init;
};