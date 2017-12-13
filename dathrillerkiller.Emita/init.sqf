waitUntil {!isNil "BIS_fnc_init" and !isNil "BIS_MPF_InitDone"};

/*addons FPS fixes*/
CL2MOD_fnc_FruitMachineEnvio = {};

diag_log text "[LOG] Straight Forward Gaming Island Life Init Started";
"dynamicBlur" ppEffectEnable true; 
"dynamicBlur" ppEffectAdjust [10]; 
"dynamicBlur" ppEffectCommit 0; 

dtk_client = [true,false]select (isServer && isDedicated);
dtk_server = [false,true]select (isServer && isDedicated);

waitUntil {time > 1 and (count playableUnits > 0)}; 
if (isNil "server_auth" && {dtk_client})then {
	systemchat "Waiting for server to authenticate";
	waitUntil {!isNil "server_auth"};
	systemchat "Server authentication finished";
};

enableSaving [false, false];

call compile loadFile "configuration\CfgFunctions.fnc";
call compile preprocessFile  "ServerLoad\miscfunctions.sqf";

/* Removes all event handlers */
waitUntil {(!isNull player and !isnull findDisplay 46) or dtk_server};
player removeAllEventHandlers "killed";
player removeAllEventHandlers "Fired";
player removeAllEventHandlers "FiredNear";
player removeAllEventHandlers "HandleDamage";
player removeAllEventHandlers "Respawn";
player removeAllEventHandlers "MPHit";

/* Go ahead and figure out what side the player is on */
if (dtk_client)then {
	_side = str playerSide;
	ar_side = switch(_side)do{
		case "CIV":{"CIV"};
		case "GUER":{"EMS"};
		case "WEST":{"PD"};
	};
call compile preprocessFile format ['configuration\sidevariables\%1variables.sqf',ar_side];
};

call compile preprocessFile "configuration\Cfgmodules.sqf";	
call compile preprocessFile  "ServerLoad\INVvars.sqf";											


if (dtk_client) then {
	call compile preprocessFile "initclient.sqf";
};