private ["_marker"];

{
	_marker = createMarkerLocal [("garage1_" + str _ForEachIndex), getPos _x];
	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerColorLocal "colorBlack";
	_marker setMarkerTextlocal "Garage";
	_marker setMarkerAlphaLocal 1;
}ForEach (nearestobjects [getpos BuildingCollapesLogic, ["Land_House_C_12_EP1"], 20000]);