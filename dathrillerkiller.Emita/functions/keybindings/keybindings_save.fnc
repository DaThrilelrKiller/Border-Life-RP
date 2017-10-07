private ["_KeySettings","_data","_index","_key","_shift","_ctrl","_alt"];

_KeySettings = profileNamespace getVariable "SFGKeys123";

_data = call compile (lbData [1401, (lbCurSel 1401)]);
_index = _data select 3;

_key = (KeyLetters select (lbCurSel 2100) select 1);
_shift = if ((lbCurSel 2101) == 0)then {true}else {false};
_ctrl = if ((lbCurSel 2102) == 0)then {true}else {false};
_alt = if ((lbCurSel 2103) == 0)then {true}else {false};

_data set [1,_key];
_data set [2,[_shift,_ctrl,_alt]];



/*save the niggers shit*/
_KeySettings set [_index,_data];
profileNamespace setVariable ['SFGKeys123',_KeySettings];

systemChat format ["%1 Key saved",_data select 0];
