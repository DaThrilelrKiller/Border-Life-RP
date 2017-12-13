private ["_pos","_size","_data","_name","_marker_area","_marker_name","_fish"];

if (!isCop)then {
	{
		_data = _x getVariable ["fishing",""];
		if (typeName _data == "ARRAY")then {
			_pos = _data select 0;
			_size = _data select 1;
			_fish = _data select 2;
			_name = _fish select 0;
		
		
			_marker_area = createMarkerLocal [("fishing_" + str _ForEachIndex), _pos];
			_marker_area setMarkerTypeLocal "Empty";
			_marker_area setMarkerShapeLocal "ELLIPSE";
			_marker_area setMarkerColorLocal "colorWhite";
			_marker_area setMarkerSizeLocal [_size, _size];
			_marker_area setMarkerAlphaLocal 1;
			
			_marker_name = createMarkerLocal [("fishing_n" + str _ForEachIndex), _pos];
			_marker_name setMarkerTypeLocal "mil_circle";
			_marker_name setMarkerTextLocal _name;
			_marker_name setMarkerColorLocal "colorBlue";
			_marker_name setMarkerSizeLocal [0.69999999,0.69999999];
			_marker_name setMarkerAlphaLocal 1;
		
		};
	}forEach allMissionObjects "BuoyBig";
};