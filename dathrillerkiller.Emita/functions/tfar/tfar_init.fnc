
if (dtk_server)exitwith{};

[]spawn {
player call TFAR_AddItemRadio;

_nul = [] execVM '\task_force_radio\init.sqf';
waitUntil {scriptDone _nul};
[]spawn TFAR_fnc_clientinit;

tfar_init_done = true;
};