
lbClear 1501;

_coms = profileNameSpace getVariable "v_admin_recents";
{
	lbAdd [1501, _x];
}forEach _coms;