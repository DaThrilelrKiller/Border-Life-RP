private ["_array"];

_array = _this call{
	if (typeName _this == "STRING")exitWith {missionNamespace getVariable [format["A_MS_%1", _this],[]]};
	if (typeName _this == "ARRAY")exitWith {_this};
	[]
};

_array
