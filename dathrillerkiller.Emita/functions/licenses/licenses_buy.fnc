private ["_license","_name","_cost"];

_license = ((dtk_licenses select _this) select 0);
_name    = ((dtk_licenses select _this) select 2);
_cost    = ((dtk_licenses select _this) select 3);

if ([_cost,_license,_name]call shops_purchaseLic)then {
	call compile format ['demerits%1 = 10;',_license];
};
	