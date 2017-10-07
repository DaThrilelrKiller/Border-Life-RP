
private ["_item","_variable","_avalible","_pending","_totaltime","_timecur"];

_item = _this;
_avalible = 0;
_pending = 0;

_variable = missionNamespace getVariable format ["fac_%1",_item];


if !(isNil "_variable")then 
{
	{
	_avalible = if (time > (_x select 1))then {_avalible + 1}else{_avalible};
	_pending = if (time < (_x select 1)) then {_pending + 1}else{_pending};
	if (isNil "_timecur" && {time < (_x select 1)})then {_timecur = (_x select 1)};
	}forEach _variable;
	
	_totaltime = _variable select ((count _variable) - 1) select 1;
};
_timecur = if (isNIl "_timecur")then {0}else {(_timecur - time)};
_totaltime = if (isNIl "_totaltime")then {0}else {(_totaltime - time)};

[_avalible,_pending,_totaltime ,_timecur]
