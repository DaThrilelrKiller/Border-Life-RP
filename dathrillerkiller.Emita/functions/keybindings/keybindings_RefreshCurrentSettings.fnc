private ["_cursel","_data","_bools","_key","_shift","_ctrl","_alt","_letter"];

while {ctrlVisible 33363}do
{
_cursel = (lbCurSel 1401);
waitUntil {(lbCurSel 1401) != _cursel or !ctrlVisible 33363};
if (!ctrlVisible 33363) exitWIth{};
_data = call compile (lbData [1401, (lbCurSel 1401)]);
_bools = _data select 2;
_key = _data select 1;
_shift = _bools select 0;
_ctrl = _bools select 1;
_alt = _bools select 2;
_letter = _key call keybindings_GetKeyLetter;

/*Key*/
lbSetCurSel [2100, _letter];

/*bools*/
if (_shift) then {lbSetCurSel [2101, 0];}else{lbSetCurSel [2101, 1];};
if (_ctrl) then {lbSetCurSel [2102, 0];}else{lbSetCurSel [2102, 1];};
if (_alt) then {lbSetCurSel [2103, 0];}else{lbSetCurSel [2103, 1];};

};


/*Reloads all the keys after the menu is closed*/
KeybindingsDone = profileNamespace getVariable "SFGKeys123";
_keyremoveHandler = []execVM "core\client\actions\RemoveKeyPress.sqf";
waitUntil {ScriptDone _keyremoveHandler};
call compile preprocessFile format ['CORE\CLIENT\ACTIONS\%1OnKeyPress.sqf',ar_side];
call compile preprocessFile 'CORE\CLIENT\ACTIONS\TFRKeyPress.sqf';