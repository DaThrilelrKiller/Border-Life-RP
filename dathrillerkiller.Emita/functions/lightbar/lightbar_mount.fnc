_vehicle = _this;
_points = _vehicle call lightbar_config;

if !(isNil "_points")then {
	_light = "dtk_lightbar" createVehicle [0,0,0];
	_light attachTO [_vehicle,_points];
	_light setvehicleinit format ["this setvehiclevarname '%1_light'; %1_light = this;",_vehicle];
	_vehicle setVariable ["lightbar",_light,true];
}else{
	systemchat "this vehicle is not supported";
};
