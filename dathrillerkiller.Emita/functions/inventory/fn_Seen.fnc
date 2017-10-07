private ["_c", "_obj", "_arr", "_dis", "_res","_mygang","_exitvar","_i","_gangarray","_gang","_members"];
	_obj = _this select 0;
	_arr = (_this select 1) - [_obj];
	_dis = _this select 2;
	_res = false;
	if (isNull _obj) then 
	{	
		_res = false;
	}
	else
	{
		for "_c" from 0 to (count _arr - 1) do {
		
			if (not(isNull(_arr select _c))) then
			{
				if ((_obj distance (_arr select _c)) < _dis) then
				{
	
				_mygang = call INV_mygang;
				_exitvar = false;

				if(_mygang != "")then

					{

					for "_i" from 0 to (count gangsarray - 1) do 

						{

						_gangarray = gangsarray select _i;
						_gang = _gangarray select 0;
						_members = _gangarray select 1;
						
						if(_mygang == _gang and name (_arr select _c) in _members)then{_exitvar=true;};

						};
				
					};

				if(!_exitvar)then{_res = true;};
				
				};
			};
		};
	};
	_res