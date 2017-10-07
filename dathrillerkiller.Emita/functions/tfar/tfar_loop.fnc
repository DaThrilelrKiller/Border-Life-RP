private ["_i"];
for "_i" from 0 to 1 step 0 do 
{

	if (!dtk_sp_sent && {call TFAR_fnc_getTeamSpeakChannelName == "Requesting Support"})then 
	{
		dtk_sp_sent = true;
		["ALL",["adminlevel2 or SwagDevs or adminlevel3 or adminlevel4",format ["%1 %2 Has Joined Requesting Support", name player, player],3],"network_chat",false,true]call network_MPExec;
	}
	else
	{
		dtk_sp_sent = false;
	};
	
	if (!dtk_pipe6 && {call TFAR_fnc_getTeamSpeakServerName in ["Pipe error 6","ERROR_GETTING_SERVER_NAME"] })then{
	dtk_pipe6 = true;
	sleep 1;
	[player,format['has lost connection/disconected to teamspeak 3',name player],[0.03,1,0.32,1]]call admin_logs_add;
	}
	else
	{
		if (dtk_pipe6 && {!(call TFAR_fnc_getTeamSpeakServerName in ["Pipe error 6","ERROR_GETTING_SERVER_NAME"]) })then
		{
			[player,format['has reconnected to teamspeak 3 (%1)',call TFAR_fnc_getTeamSpeakServerName],[0.03,1,0.32,1]]call admin_logs_add;
			dtk_pipe6 = false;
			sleep 1;
		};
	};

titleText ["", "PLAIN"];
waitUntil {sleep 1; ((call TFAR_fnc_getTeamSpeakChannelName) != "TaskForceRadio")};	
titleText ["Must Be In Our TFR Channel On TeamSpeak To Play!", "BLACK"];
sleep 5;
};