private ["_index"];

createDialog "dtk_keybindings";
{
lbAdd [2100,(_x select 0)];
true
}count dtk_keybindings_keys;

{
lbAdd [_x,"True"];
lbAdd [_x,"False"];
true
}count dtk_keybindings_boolids;	

{
_index = lbAdd [1401,_x select 1];
true	
}forEach dtk_keybindings;

lbSetCurSel [1401, 0];
[]spawn keybindings_refreshMenu;