_item     = lbData [1, (lbCurSel 1)];

_eta = round((_item call INV_getitemBuyCost)*.0150);
_eta = round(_eta/(ar_fac_workers/5));
_eta = if(_eta > ar_maxfactime)then{ar_maxfactime}else {_eta};

_info = _item call factories_getInfo;
_pending = _info select 0;


_variable = missionNamespace getVariable format ["fac_%1",_item];
if (isNil "_variable")then 
{
	missionNamespace setVariable [format ["fac_%1",_item],[[time,(time + _eta)]]];
}else
{
	_time = (_variable select  ((count _variable) - 1)select 1);
	_time = if (_time > time)then {time}else{_time};
	_variable set [count _variable,[_time,(_time + _eta)]];
	missionNamespace setVariable [format ["fac_%1",_item],_variable];
};

systemchat format ["%1 had been added to the production line",_item call INV_getitemName];