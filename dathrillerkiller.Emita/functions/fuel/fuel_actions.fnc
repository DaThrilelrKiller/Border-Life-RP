
{
	_x addaction ["Buy Gas","noscript.sqf",'call fuel_fill',1,false,true,"","v_fuel_cost < v_fuel_max"];
	_x addaction ["NO GAS AVAILABLE","noscript.sqf","",1,false,true,"","v_fuel_cost >= v_fuel_max"];

}ForEach (nearestobjects [getpos copbase1, ["Land_A_Fuelstation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_benzina_schnell","Land_fuelstation_army"], 20000]);