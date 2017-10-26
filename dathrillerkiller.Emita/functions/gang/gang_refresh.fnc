private ["_sel"];

/* refresh member list when new gang is select in the list box */
while {ctrlVisible 2} do {
	_sel = (lbCurSel 2);
	waitUntil {(lbCurSel 2) != _sel or !ctrlVisible 2};
	lbClear 4;
	[4,lbText[2,(lbCurSel 2)]]call gang_members;
};