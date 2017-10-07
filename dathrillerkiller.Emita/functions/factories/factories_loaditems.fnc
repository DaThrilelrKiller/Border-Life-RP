private ["_index","_config","_eta","_items"];

_index = ar_factories find ar_active_factory;
_config = ar_factory_items select _index;
_items = _config select 0;

{
_eta = round((_x call INV_getitemBuyCost)*.0150);
_eta = round(_eta/(ar_fac_workers/5));
_eta = if(_eta > ar_maxfactime)then{ar_maxfactime}else {_eta};

_index = lbAdd [1, format["%1 ($%2, %3 mins)", (_x call INV_getitemName), (_x call INV_getitemBuyCost)*0.5, round(_eta/60)]];
lbSetData [1, _index, _x];

} forEach _items;