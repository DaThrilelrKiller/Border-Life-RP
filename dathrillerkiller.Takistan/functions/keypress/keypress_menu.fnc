createDialog "keypress_dialog";

{
	lbAdd [2100,(_x select 0)];
	true
}count dtk_keypress_keys;

{
	lbAdd [_x,"True"];
	lbAdd [_x,"False"];
	true
}count dtk_keypress_boolids;	

{
	_index = lbAdd [1401,_x];
	true	
}forEach dtk_keypress; 