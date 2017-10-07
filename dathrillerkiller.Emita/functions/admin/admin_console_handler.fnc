private ["_Cursel"];
while {ctrlVisible 2} do
{
	_Cursel = (lbCurSel 1501);
	waitUntil {_Cursel != (lbCurSel 1501) or !(ctrlVisible 2)};
	if !(ctrlVisible 2)exitWith{};
	ctrlSetText [1400,lbText [1501, (lbCurSel 1501)]];
	sleep 0.5;
};