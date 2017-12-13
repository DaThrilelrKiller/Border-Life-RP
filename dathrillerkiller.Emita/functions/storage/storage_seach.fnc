private ["_object","_storage","_license","_weapons","_magazines"];
_object = _this select 0;

_storage = _object getVariable ["dtk_storage",[[],[]]]select 0;
_license = _object getvariable ["cdb_license",[]];

_weapons = [weapons _object,getweaponCargo _object select 0]select !(isPlayer _object);
_magazines = [magazines _object,getmagazineCargo _object select 0]select !(isPlayer _object);

createDialog "liste_1_button";

lbAdd [1, localize "STRS_statdialog_inventarlist"];
lbAdd [1,"------------------------------------------------------------------------------------------"];

{
	lbAdd [1,(_x call INV_getitemName)];
	true
}count _storage;


if (isPlayer _object)then {
	lbAdd [1, localize "STRS_statdialog_licenselist"];
	lbAdd [1,"------------------------------------------------------------------------------------------"];
	{
		lbAdd [1,(_x call licenses_name)];
		true
	}count _license;
};



lbAdd [1, localize "STRS_statdialog_waffen"];
lbAdd [1,"------------------------------------------------------------------------------------------"];

{
	_script = _x call INV_GetScriptFromClass_Weap;
	_name = (_script call INV_getitemName);
	lbAdd [1,_name];
	true
}count _weapons;


lbAdd [1, localize "STRS_statdialog_magazine"];
lbAdd [1,"------------------------------------------------------------------------------------------"];
{
	_script = _x call INV_GetScriptFromClass_Mag;
	_name = (_script call INV_getitemName);
	lbAdd [1,_name];
	true
}count _magazines;
