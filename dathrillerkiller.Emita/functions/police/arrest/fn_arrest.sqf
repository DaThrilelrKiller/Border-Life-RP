private ["_action"];

_action = _this select 0;

switch(_action)do
{
	case "request":
	{
		_inmate = _this select 1;
		if (!(_inmate call ISSE_IsVictim)) exitwith {systemChat "Player Is Not Cuffed!";}; 
		
		_bounty = (_inmate getvariable "cdb_bounty");
		if (_bounty > 0)then
		{
			kontostand = kontostand + _bounty;
			systemChat format ["%1 had a bounty for %2! you have recived the bounty",_inmate,_bounty];
		};
	};

	case "receive":
	{

	};
	default {diag_log format ['[ERROR] POLICE MODULE | INVALID ACTION | %1',_action]; };
};