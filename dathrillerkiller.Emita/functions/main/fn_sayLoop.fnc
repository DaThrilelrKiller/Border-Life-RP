private ["_key","_sound","_time"];


_key = _this select 0;
_sound = _this select 1;
_time = _this select 2;

call compile format [
'
	if (isNil "%1")then
	{
	%1 = true;
	}
	else
	{
	%1 = if (%1)then {false}else{true};
	};
	
	[]spawn
	{
		while {%1} do
		{
		playSound "%2";
		sleep %3;
		};
	};
',
_key,
_sound,
_time
];