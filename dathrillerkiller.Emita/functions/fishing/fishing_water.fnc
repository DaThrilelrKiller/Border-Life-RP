private ["_pos"];
_pos = [([0,8000]call core_random),([3201,8000]call core_random)];

if (surfaceIsWater _pos)exitWith {
_pos
}; 
call fishing_water;
