
{
	_x setVehicleVarName format ["fuel_%1",_forEachIndex];
	missionNamespace setVariable [format ["fuel_%1",_forEachIndex],_x];
	_x addaction ["","noscript.sqf",'call fuel_fill',1,false,true,"LeanRight","v_fuel_cost < v_fuel_max"];
	_x addaction ["NO GAS AVAILABLE","noscript.sqf","",1,false,true,"","v_fuel_cost >= v_fuel_max"];
	[_x,"Pump Fuel (E)","sfg_textures\tags\Gas pump"]call tag_add;
}ForEach (nearestobjects [getpos copbase1, ["Land_A_Fuelstation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_benzina_schnell","Land_fuelstation_army"], 20000]);