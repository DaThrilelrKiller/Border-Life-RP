_action = _this select 0;

switch(_action)do
{
	case "recive":
	{
		_from = _this select 1;
		if (player != _from)then
		{
		Kontostand = Kontostand + _amount;
		systemchat format ["You recived %1 from %2",_amount];

		}else{
		Kontostand = Kontostand - _amount;
		};
	};
	default 
	{
		_amount = ctrlText 1400;
		if !(_amount call storage_isNumber)exitWith {systemchat format ["%1 is not a valid number",_amount];};
		_amount = parseNumber _amount;
	
	
		if (_amount <= Kontostand)then 
		{
			_to = call compile lbData [2100, lbCurSel 2100];
			_to = _to select 1;
			if (_to == player)exitWith {systemchat "you can not send money to yourself sorry"};
			[_to,['recive',player],'atm_send',false,true]call network_MPExec;
			closeDialog 0;
		}else{
			systemchat format ["You do not have %1$ in your bank acount",_amount];
		};
	};
};