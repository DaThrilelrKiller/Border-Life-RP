systemchat "Reloaded";

KeybindingsDone = profileNamespace getVariable "SFGKeys123";
_keyremoveHandler = []execVM "actions\RemoveKeyPress.sqf";
waitUntil {ScriptDone _keyremoveHandler};
call compile preprocessFile format ['actions\%1OnKeyPress.sqf',ar_side];
call compile preprocessFile 'actions\TFRKeyPress.sqf';