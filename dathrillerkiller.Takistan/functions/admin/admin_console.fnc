if !(SwagDevs) exitWith {};
if (dialog)exitWith {closeDialog 0};

createDialog "admin_console";
admin_selected = 2;
[2100, true] call dtk_PlayerListToControl;
call admin_load;


[]call admin_console_recents;