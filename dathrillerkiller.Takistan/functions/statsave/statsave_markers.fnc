private ["_marker"];

if (dtk_client)then {
	{
		if !([_x,200] call statsave_nearSave)then {
			_marker = createMarkerLocal [("save_" + str _ForEachIndex), getPos _x];
			_marker setMarkerTypeLocal "mil_dot";
			_marker setMarkerColorLocal "colorRed";
			_marker setMarkerTextlocal "Vehicle Save Point";
			_marker setMarkerAlphaLocal 1;
			v_save_locs set [count v_save_locs,_marker];
		};
	}ForEach (nearestobjects [getpos BuildingCollapesLogic, ["Land_House_C_10_EP1"], 20000]);
};