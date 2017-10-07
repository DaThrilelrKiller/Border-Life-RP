private ["_uid","_MainArray","_array","_playerside","_varName","_varValue","_saveArray","_c","_player","_log"];
_player = (_this select 0);
_uid = if ((typeName _player) == "STRING")then {_player}else{getPlayerUID _player};
_MainArray = _this select 1;

for [{_c=0}, {_c < (count _MainArray)}, {_c=_c+1}] do 
{
	_array = _MainArray select _c;
	_playerside = _array select 0;
	_varName = _array select 1;
	_varValue = _array select 2;
	
	if(count (toarray(format["%1", _varValue])) > 8095) then {
		_log = format["Datebase: write failed %1 %2 data too big > 8K", _varName];
		[_player,["dtk_client",_log,3],"network_chat",false,false]call network_MPExec;
	}
	else
	{
		_saveArray = [_uid, _playerside, _varName, _varValue];
		_saveArray call S_statsave_write;
	};
};