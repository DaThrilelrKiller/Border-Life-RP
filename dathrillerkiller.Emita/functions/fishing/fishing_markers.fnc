private ["_i","_pos","_size","_data","_vehicle"];

for "_i" from 0 to v_spots step 1 do 
{
	_pos = call fishing_water;
	_size = [75,200]call core_random;
	_data = v_types call BIS_selectRandom;
	
	
	_vehicle = "BuoyBig" createVehicle _pos;
	_vehicle setVariable ["fishing",[_pos,_size,_data],true];
};
