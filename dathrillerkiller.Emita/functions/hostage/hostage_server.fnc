
_hostage = _this select 0;
_taker = _this select 1;


waitUntil {isNull _hostage or isNull _taker};

if (isNull _taker)then
{
	deleteVehicle _hostage;
	deletemarker "hostage_mrk";
};
