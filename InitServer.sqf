_H = []execVM "\MPMissions\configuration\CfgVariables.sqf";
waitUntil {scriptDone _H};

[]call S_main_SetupMap;

[] execVM "\MPMissions\server\core\functions\main\fn_loop.sqf";

[0, 0, 0, ["serverloop"]] execVM "mayor.sqf";


[] execVM "\MPMissions\Server\LoadServerStats.sqf";
[]spawn S_ems_missionloop;
[]spawn S_drug_GrowLoop;

_nul = [] execVM '\task_force_radio\init.sqf';
waitUntil {scriptDone _nul};


[]call Main_ResetSafeCode;


onPlayerDisconnected 'deleteMarker ("medical_" + _name);';
onPlayerConnected 'if (isNil "dtk_uids")then {dtk_uids = []}; dtk_uids set [count dtk_uids,_uid];';

server_auth = true;
publicVariable "server_auth";
diag_log "[LOG] SFG Island Life Has Loaded";