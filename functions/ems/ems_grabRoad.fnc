private ["_road"];

_road = (v_roads call BIS_selectRandom);
if ([_road,150]call Main_IsPlayerNear)exitWith {
	call ems_grabRoad
};

_road