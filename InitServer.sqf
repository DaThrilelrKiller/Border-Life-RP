_H = []execVM "\MPMissions\configuration\CfgVariables.sqf";
waitUntil {scriptDone _H};

[] execVM "\MPMissions\server\core\functions\main\fn_loop.sqf";

[0, 0, 0, ["serverloop"]] execVM "scripts\mayor.sqf";


[]spawn S_ems_missionloop;
[]spawn S_drug_GrowLoop;

_nul = [] execVM '\task_force_radio\init.sqf';
waitUntil {scriptDone _nul};


[]call Main_ResetSafeCode;


onPlayerDisconnected 'deleteMarker ("medical_" + _name);';
onPlayerConnected 'if (isNil "dtk_uids")then {dtk_uids = []}; dtk_uids set [count dtk_uids,_uid];';

waitUntil {time > 0};
INV_ServerBuildingArray = allMissionObjects "All";
publicVariable "INV_ServerBuildingArray";
[]call S_main_SetupMap;

server_auth = true;
publicVariable "server_auth";
diag_log "[LOG] SFG Island Life Has Loaded";