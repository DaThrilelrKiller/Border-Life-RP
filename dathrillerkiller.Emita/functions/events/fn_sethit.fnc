if(!alive player)exitwith{};

private ["_vehicle","_selection","_damage","_shooter","_ammo"];
_vehicle	= _this select 0;
_selection	= _this select 1;
_damage		= _this select 2;
_shooter	= _this select 3;
_ammo		= _this select 4;

if(player == _vehicle && {_ammo in ["8Rnd_B_Beneli_74Slug","B_12Gauge_74Slug","B_9x18_SD"]}) exitwith {["hit", _shooter, _selection, _damage] execVM "scripts\stun.sqf";};
player SetHit [_selection, _damage];
if(_selection == "" and _damage >= 1 and !isnull _shooter)then{player setdamage 1;};


false;