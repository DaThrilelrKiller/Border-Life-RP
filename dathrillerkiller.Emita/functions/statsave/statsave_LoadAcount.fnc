/*
File: fn_LoadAcount.sqf
Desc: Loads statics for a player it modular for all fractions
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	none
*/

private ["_stats","_UID"];
_stats = _this;
_UID = (_stats select 0);
removeAllWeapons player;

if ((getPlayerUID player) != _UID)exitWith {
systemChat format ["Almost loaded with (%1`s) stats requesting stats again",_UID];
["SERVER",[player,ar_side],"s_statsave_loadfromdb",false,false]call network_MPExec;
};

kontostand = (_stats select 1);
dtk_hunger = (_stats select 2);
player setVariable ["dtk_storage",(_stats select 3), true];
INVVehiclesLand = (_stats select 5);
{player addMagazine _x} count (_stats select 9);
{if !(_x call TFAR_fnc_isRadio)then {player addWeapon _x};}count (_stats select 8);
ARHP = (_stats select 10);
ARHR =  (_stats select 11);
player setVariable ["cdb_warrants",(_stats select 13),true];
player setVariable ["cdb_license",(_stats select 4),true];
player setVariable ["cdb_notes",(_stats select 14),true];
player setVariable ["cdb_bounty",(_stats select 15),true];

INV_PrivateStorage = (_stats select 16);
INVAppsInstalled = (_stats select 17);
if ((_stats select 18) == "UNCONSCIOUS")then {
["ALL",["dtk_client",format ["[RELOG DETECTION] caught %2%1 loging in after being dead, this could be a mistake", name player, player],3],"network_chat",false,false]call network_MPExec;
};
setViewDistance (_stats select 19);
setTerrainGrid (_stats select 20);

AR_StaticsLoaded = true;
statsave_init_done = true;
