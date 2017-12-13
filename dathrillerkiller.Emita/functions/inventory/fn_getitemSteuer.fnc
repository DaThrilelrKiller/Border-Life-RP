private ["_type", "_item", "_result"];
	_type = _this call INV_getitemType;
	_cost = _this call INV_getitemBuyCost;
	[_cost, (_type call INV_GetObjectSteuer)] call INV_AddProzent;