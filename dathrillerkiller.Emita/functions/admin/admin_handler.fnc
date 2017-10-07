sleep 0.5;
private ["_Cursel"];

lbSetCurSel [1500, admin_selected];
_Cursel = (lbCurSel 1500);
waitUntil {_Cursel != (lbCurSel 1500)}; 

call admin_exec1;
