waitUntil {!isNil "BIS_fnc_init" and !isNil "BIS_MPF_InitDone"};

/*addons FPS fixes*/
CL2MOD_fnc_FruitMachineEnvio = {};

diag_log text "[LOG] Border Life Roleplay Init Started";

dtk_client = [true,false]select (isServer && isDedicated);
dtk_server = !dtk_client;

waitUntil {time > 0.1}; 
if (dtk_client)then {
168 cutRsc ['dtk_logo','PLAIN'];
};

if (isNil "server_auth" && {dtk_client})then {
	systemchat "Waiting for server to authenticate";
	waitUntil {!isNil "server_auth"};
	systemchat "Server authentication finished";
};

enableSaving [false, false];

call compile loadFile "configuration\CfgFunctions.fnc";
call compile preprocessFile  "ServerLoad\miscfunctions.sqf";

/* Go ahead and figure out what side the player is on */
if (dtk_client)then {
	dtk_side = playerSide call {
		if (_this == civilian)exitWith {"CIV"};
		if (_this == resistance)exitWith {"EMS"};
		if (_this == west)exitWith {"PD"};
		if (_this == east)exitWith {"SPD"};
		"unknown"
	};
call compile preprocessFile format ['configuration\sidevariables\%1variables.sqf',dtk_side];
};

call compile preprocessFile  "ServerLoad\INVvars.sqf";	
call compile preprocessFile "configuration\Cfgmodules.sqf";											


if (dtk_client) then {
	[] execVM "scripts\shopfarmfaclicenseactions.sqf";
	call compile preprocessFile format ['actions\%1actions.sqf',dtk_side];
	call events_events;
	diag_log text "[LOG] Border Life Roleplay finished!";
};