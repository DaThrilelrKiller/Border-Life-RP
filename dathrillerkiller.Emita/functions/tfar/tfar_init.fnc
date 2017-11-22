[]spawn 
{
	_nul = [] execVM '\task_force_radio\init.sqf';
	waitUntil {scriptDone _nul};

	if (dtk_client)then
	{
		player call TFAR_AddItemRadio;
		[]spawn TFAR_fnc_clientinit;
	};
};