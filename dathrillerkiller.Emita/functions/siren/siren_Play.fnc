private ["_vehicle","_siren","_number","_siren"];

if (driver (vehicle player) !=  player)exitWith {true};

if (dtk_sirenon)exitWith {true};
dtk_sirenon = true;

if ((call siren_mode) == "Manual")then
{
call siren_playManual;
}
else
{
[]spawn siren_playAuto;
};

true
