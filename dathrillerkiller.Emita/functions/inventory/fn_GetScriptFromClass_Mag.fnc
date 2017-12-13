private ["_c", "_result"];
	_result = "";
	for "_c" from 0 to (count AlleMissionsObjekte - 1) do {
		if ((((INV_AlleMagazinObjekte select _c) select 2) select 0) == _this) exitWith {
			_result = ((INV_AlleMagazinObjekte select _c) select 0);
		};
	};
	_result;