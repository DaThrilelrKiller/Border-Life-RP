private ["_bools","_KeySettings","_index"];
_bools = [2101,2102,2103];
_KeySettings = profileNamespace getVariable ["SFGKeys123",keybindingDefaults];

{
	lbAdd [2100,(_x select 0)];
	true
}count KeyLetters;

{
	lbAdd [_x,"True"];
	lbAdd [_x,"False"];
	true
}count _bools;	

{
	_data = _x;
	_data set [count _data,_ForEachIndex];
	_index = lbAdd [1401,_x select 0];
	lbSetData [1401, _index, str _data];
	true	
}forEach _KeySettings;