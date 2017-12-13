/*
File: removeActions.sqf
Desc: Used to remove all actions from a player.
Author: Killzone Kid

Prams: 
	none
*/

private ["_i","_temp"];

if (isNil "ar_actionsremove")then {ar_actionsremove = 0};
_temp = player addAction ["",""];

for "_i" from ar_actionsremove to _temp do
{
	player removeAction _i;
	(vehicle player) removeAction _i;
};

ar_actionsremove = _temp;