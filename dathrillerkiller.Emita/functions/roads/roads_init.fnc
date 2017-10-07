
if (dtk_server)exitWith {};

[]spawn {
waitUntil {call roads_display};
};

roads_init_done = true;