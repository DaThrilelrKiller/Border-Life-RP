KeybindingsDone = profileNamespace getVariable ["SFGKeys123",keybindingDefaults];
_keyremoveHandler = []execVM "actions\RemoveKeyPress.sqf";
waitUntil {ScriptDone _keyremoveHandler};
call compile preprocessFile format ['actions\%1OnKeyPress.sqf',dtk_side];
call compile preprocessFile 'actions\TFRKeyPress.sqf';