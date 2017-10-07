private ["_pos","_roads","_road"];


_pos = getPos player;
_roads = _pos nearroads 10;
if (count _roads > 0)then {
_road = str (_roads select 0);
};

_road
