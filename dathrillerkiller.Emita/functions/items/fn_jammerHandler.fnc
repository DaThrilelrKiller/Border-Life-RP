private ["_jammer"];

_jammer = _this select 0;

while {alive _jammer} do
{
	if (player distance _jammer < 200)then
	{
		player setVariable ["tf_unable_to_use_radio",true,true];
		["pg_jammersnd","pg_jammer1",2.047]call main_sayLoop;
		waitUntil {player distance _jammer > 200};
	}
	else
	{
		player setVariable ["tf_unable_to_use_radio",false,true];
		["pg_jammersnd","pg_jammer1",2.047]call main_sayLoop;
		waitUntil {player distance _jammer < 200};
	};
};

player setVariable ["tf_unable_to_use_radio",false,true];