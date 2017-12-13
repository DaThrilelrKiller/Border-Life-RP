(findDisplay 1601) displaySetEventHandler ["keyDown","_this call display_keypress"];

waitUntil {!isNil { profileNamespace getVariable "tickleme"}};
_PlayerSettings = profileNamespace getVariable "tickleme";
player setVariable ["PlayerSettings", [_PlayerSettings,ar_side], true];
_face = (_PlayerSettings select 0);
clearVehicleInit player;
player setVehicleInit format["this setFace '%1';", _face];
processInitCommands;
PG_Faceloaded = true;