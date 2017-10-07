createDialog "admin_console";
admin_selected = 2;
[2100, true] call dtk_PlayerListToControl;
call admin_load;


[]spawn admin_console_handler;
_coms = profileNameSpace getVariable "admin_console_recent";
{
lbAdd [1501, _x];
}forEach _coms;