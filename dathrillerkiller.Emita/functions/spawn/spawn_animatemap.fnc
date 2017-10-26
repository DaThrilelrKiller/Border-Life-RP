while {ctrlVisible 10023} do
{
disableSerialization; 
_cursel = (lbCurSel 1401);
waitUntil {(lbCurSel 1401) != _cursel};
_grid = call compile lbData [1401, (lbCurSel 1401)];
	if (!isNil "_grid")then
	{
		_ctrl = (findDisplay 1600) displayCtrl 10023;
		_ctrl ctrlMapAnimAdd [1,0.5,_grid];
		ctrlMapAnimCommit _ctrl;
	};
};