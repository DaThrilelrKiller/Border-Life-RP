private ["_action","_tiketFrom","_tiketPrice","_geld","_message"];
_action = toLower (_this select 0);

switch(_action)do
{
	case "request":
	{
		AR_GivingTiketTO = _this select 1;
		createDialog "AR_GiveTicket";
	};

	case "receive":
	{
		AR_Action = "";
		_tiketFrom = ( _this select 1);
		createDialog "AR_GetTicket";
		systemChat format ["%1 has gave you a ticket",_tiketFrom];
		ctrlSetText [1400, ( _this select 2)];
		ctrlSetText [1401, ( _this select 3)];
		
		waitUntil{(not(ctrlVisible 1400))};

		switch(AR_Action)do
		{
			case "pay":
			{
				_geld = [player,"geld"] call storage_amount;
				_tiketPrice = (ctrlText 1401) call string_toInt; 
				if (_geld < _tiketPrice)then
				{
					_message = format ["%1 does not have enought money to pay the ticket",name player];
					systemChat "you do not have enought money to pay the ticket";
				}
				else
				{
					_message = format ["%1 has payed the ticket",name player];
					systemChat "you have payed the ticket";
					[player,"geld",-_tiketPrice] call storage_add;
					[_tiketFrom,["player","geld",_tiketPrice],"storage_add",false,false]call network_MPExec;
				};
			};
			default 
			{
			_message = format ["%1 has refused to pay the ticket",name player]; 
			};
		};

		[_tiketFrom,["dtk_client",_message,3],"network_chat",false,false]call network_MPExec;
	};
	default {diag_log format ['[ERROR] TICKET MODULE | INVALID ACTION | %1',_action]; };
};