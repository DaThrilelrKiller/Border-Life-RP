private ["_c", "_Fobjarray"];
	_Fobjarray = [];
	if ((typeName _this) == "STRING") then {
			_Nname = format["A_MS_%1", _this];
			_Fobjarray = missionNamespace getVariable _Nname;
		};
	if ((typeName _this) == "ARRAY") then {
			_Fobjarray = _this;
		};

	_Fobjarray 