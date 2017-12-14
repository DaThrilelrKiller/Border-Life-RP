if (isNil { profileNamespace getVariable "tickleme"}) then 
{
	createDialog "AR_PlayCust";
	waitUntil {!(isNil { profileNamespace getVariable "tickleme"})};
	createDialog "AR_SpawnMenu";
}
else
{
	createDialog "AR_SpawnMenu";
};

_PlayerSettings = profileNamespace getVariable "tickleme";
player setVariable ["PlayerSettings", [_PlayerSettings,dtk_side], true];
_face = (_PlayerSettings select 0);
clearVehicleInit player;
player setVehicleInit format["this setFace '%1';", _face];
processInitCommands;
PG_Faceloaded = true;