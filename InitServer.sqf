call compile preprocessFile "\MPMissions\configuration\CfgVariables.sqf";

[] execVM "\MPMissions\server\core\functions\main\fn_loop.sqf";
[]spawn S_ems_missionloop;

[]call Main_ResetSafeCode;


onPlayerDisconnected 'deleteMarker ("medical_" + _name);';

INV_ServerBuildingArray = allMissionObjects "All";
publicVariable "INV_ServerBuildingArray";

server_auth = true;
publicVariable "server_auth";
diag_log "[LOG] SFG Island Life Has Loaded";