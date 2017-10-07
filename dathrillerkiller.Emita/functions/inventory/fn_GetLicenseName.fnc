	private ["_c"];
	for "_c" from 0 to (count dtk_licenses - 1) do {
		if (((dtk_licenses select _c) select 0) == _this) exitWith {
			((dtk_licenses select _c) select 2);	
		};
	};