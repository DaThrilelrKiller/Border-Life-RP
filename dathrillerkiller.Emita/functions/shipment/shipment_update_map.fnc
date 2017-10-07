while {ctrlVisible 56} do
{
disableSerialization; 
_cursel = (lbCurSel 1500);
waitUntil {(lbCurSel 1500) != _cursel};
_grid = getMarkerPos lbData [1500, (lbCurSel 1500)];
	if (!isNil "_grid")then
	{
		_ctrl = (findDisplay 162) displayCtrl 56;
		_ctrl ctrlMapAnimAdd [1,0.5,_grid];
		ctrlMapAnimCommit _ctrl;
	};
};