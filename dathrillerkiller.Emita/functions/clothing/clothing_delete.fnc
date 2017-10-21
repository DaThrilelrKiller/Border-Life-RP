_this spawn 
{
	private ["_unit"];
	_unit = _this select 0;
	if (not([_unit] call clothing_exsist)) exitWith {};
	waitUntil {!isPlayer _unit};
	_unit setPosATL [-1, -1, 0];
	sleep 1;
	deleteVehicle _unit;
};