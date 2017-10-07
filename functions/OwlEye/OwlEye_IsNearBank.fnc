private ["_i","_atm","_Var"];

_Var = false;
for [{_i = 0},{_i < count(bankflagarray)},{_i = _i + 1}] do 
{
	_atm = (bankflagarray select _i);
	if (player distance _atm < 6)then {_Var = true};
};

_Var 