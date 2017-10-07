private ["_vehicle","_siren","_ar_siren"];

_vehicle = (vehicle player);
_siren = (currentWeapon _vehicle);

_ar_siren = _siren createVehicle [0,0,0];
_ar_siren attachto[_vehicle,[0,0,-49]];
[_ar_siren]spawn
{
	waitUntil {!dtk_sirenon or (vehicle player == player)};
	deleteVehicle (_this select 0);
};
