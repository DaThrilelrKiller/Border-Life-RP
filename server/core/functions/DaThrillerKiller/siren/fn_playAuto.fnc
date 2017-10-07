private ["_vehicle","_number","_ar_siren","_weapon"];


_vehicle = (vehicle player);

while {true} do 
{
_weapon = (currentWeapon _vehicle);

_ar_siren = _weapon createVehicle [0,0,0];
_ar_siren attachto[_vehicle,[0,0,-49]];

waitUntil {(currentWeapon _vehicle) != _weapon or (vehicle player == player) or (call siren_mode) == "Manual"};
deleteVehicle _ar_siren;

if (vehicle player == player)exitWith {};
if ((call siren_mode) == "Manual")exitWith {};
};

dtk_sirenon = false;
