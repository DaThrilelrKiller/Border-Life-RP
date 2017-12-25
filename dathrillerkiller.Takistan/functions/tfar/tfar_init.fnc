[]spawn 
{
	_nul = [] execVM '\task_force_radio\init.sqf';
	waitUntil {scriptDone _nul};

	if (dtk_client)then
	{
		player call tfar_additemradio;
		[]spawn tfar_fnc_clientinit;
	};
};