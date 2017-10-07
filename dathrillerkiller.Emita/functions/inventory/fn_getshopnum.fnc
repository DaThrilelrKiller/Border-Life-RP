private ["_c", "_Fshopnum"];
	_Fshopnum = [];
	if ((typeName _this) == "OBJECT") then {
	_Fshopnum = shopusearray find _this;
	
	};
	
	_Fshopnum;