private ["_cursel","_data","_id","_name","_upordown","_settings","_key","_shift","_ctrl","_alt"];

_data = dtk_keybindings select (lbCurSel 1401);
_id = _data select 0;
_name = _data select 1;
_upordown = _data select 2;
	
_settings = _data select 3;
_key = _settings select 0;
_shift = _settings select 1;
_ctrl = _settings select 2;
_alt = _settings select 3;

lbSetCurSel [2100, (_key call keybindings_index)];


if (_shift) then {lbSetCurSel [2101, 0];}else{lbSetCurSel [2101, 1];};
if (_ctrl) then {lbSetCurSel [2102, 0];}else{lbSetCurSel [2102, 1];};
if (_alt) then {lbSetCurSel [2103, 0];}else{lbSetCurSel [2103, 1];};

