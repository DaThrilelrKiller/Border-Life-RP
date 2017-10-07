private ["_c", "_Fshoparray"];
	_Fshoparray = [];
	if ((typeName _this) == "OBJECT") then {
		for "_c" from 0 to (count INV_itemshops - 1) do {
			if (((INV_itemshops select _c) select 0) == _this) then {
				_Fshoparray = INV_itemshops select _c;
			};
		};
	};
	if ((typeName _this) == "ARRAY") then {
		_Fshoparray = _this;
	};
	_Fshoparray;