private ["_action"];
_action = _this select 0;
_player = _this select 1;

switch(_action)do
{
	case "ping":
	{
		[_player,["pong",player],"names_setKnown",false,false]call network_MPExec;
		systemchat format ["You have asked %1 for their name!",_player];
	};

	case "pong":
	{

	};
	
	case "score":
	{

	};
};