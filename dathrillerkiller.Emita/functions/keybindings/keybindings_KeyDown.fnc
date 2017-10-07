private ["_key","_return"];

_key     = _this select 1;
_return = false;

if (isNil format["dtk_kp_%1",_key])then {};

if (_key in dtk_disabledkeys)exitwith {true};


switch _key do
{
	case (KeybindingsDone select 67 select 1):
	{
		call siren_play;
	};
	case (KeybindingsDone select 68 select 1):
	{
		call siren_changemode;
	};
	
};

_return