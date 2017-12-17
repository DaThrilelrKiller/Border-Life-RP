private ["_holster","_weapon","_holstered"];

_holster = _this select 0;
_weapon = (weaponState player)select 0;
_holstered = player getVariable [_holster,""];

if (_holstered != "")exitWith {
	call holster_remove;
};

_kind = [_weapon,_holster] call holster_kind;;

if (_kind)then {
	player removeWeapon _weapon;
	player setVariable [_holster,_weapon,true];
};
