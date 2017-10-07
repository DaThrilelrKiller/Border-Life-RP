private ["_tmp"];
if (SwagDevs) then {
		
		_licences = [];
		{
			_tmp = _x select 0;
			
			if (!(_tmp in _licences)) then {
				_licences = _licences + [_tmp];
			};
		} count dtk_licenses;
		player setVariable ["cdb_license",_licences,true];
		
		if (SwagDevs)then {
			systemChat  format ["%1 has addedd all licenses to himself",name player];
		};
	} else 
	{
	["ALL",["dtk_client",format ["%1 has tried to use a license hack!!!",name player],2],"network_chat",false,false]call network_MPExec;
	};