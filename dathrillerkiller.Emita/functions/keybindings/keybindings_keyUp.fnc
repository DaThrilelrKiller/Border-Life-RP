private ["_key","_return"];


_key     = _this select 1;
_return = false;

if (_key in dtk_disabledkeys)exitwith {true};


switch _key do
{
	case (KeybindingsDone select 67 select 1):
	{
		if ((call siren_mode) == "Manual") then {dtk_sirenon = false;};
	};
	case (KeybindingsDone select 69 select 1):
	{
		call lightbar_toggle;
	};
};

_return