if (!pitavailable) exitwith {player sidechat format["Your Pit Maneuver Is Not Available Right Now."];};

_pitcar = (nearestobjects [getpos player, ["LandVehicle"], 7] select 1);
_pitcarspeed = speed _pitcar;
_rdmpit = floor random 2;


if (isNil "_pitcar") exitwith {pitavailable = true; player sidechat format["Your Are Not In Range To Pit A Vehicle."];};
	
if (_pitcarspeed <= 39) exitwith {player sidechat format["Your Target Must Be Going At Least 40 km/h!"];};

if ((_rdmpit == 1) && {_pitcar distance player <= 7}) then {
	_pitcar setVehicleInit 'this setfuel 0'; processInitCommands;
	player sidechat "You Have Disabled The Fleeing Vehicle!";

} else {
	player sidechat format["You Have Failed To Disable The Vehicle!"];
};

player sidechat format["Your Pit Maneuver Is Now Disabled. It Will Be Available In 10 Seconds."];
pitavailable = false;
sleep 10;
pitavailable = true;
player sidechat format["Your Pit Maneuver Is Now Available."];