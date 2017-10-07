private ["_income","_condition","_money"];

_income = 0;

{
_condition = _x select 0;
_money = _x select 1;

	if (call _condition)then
	{
		_income = _income + _money;
	};
	true
}count ar_paychecks;

kontostand = kontostand + _income;
systemchat format ["%1 you recived a paycheck of %2$",(name player),_income];

if (call Other_isMayor) then
{
	systemchat format ["As mayor you reviced %1 in Taxes",MayorSteuern];
};
MayorSteuern = 0;