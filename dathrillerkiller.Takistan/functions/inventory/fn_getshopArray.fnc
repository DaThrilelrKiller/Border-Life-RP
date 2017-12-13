private ["_index","_return"];

_return = [];
if ((typeName _this) == "OBJECT") then 
{
	_index = _this call shops_index; 
	_return = INV_itemshops select _index;
};
if ((typeName _this) == "ARRAY") then {
	_return = _this;
};

_return;