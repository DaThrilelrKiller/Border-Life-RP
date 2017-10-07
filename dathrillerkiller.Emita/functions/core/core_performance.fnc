
private ["_action"];
_action = _this select 0;

switch(_action)do
{
	case "ping":
	{
		dtk_send_time = time;
		["SERVER",["pong",serverTime,player],'core_performance',false,false]call network_MPExec;
	};

	case "pong":
	{
		[(_this select 2),["score",diag_fps,diag_fpsMin,(serverTime - (_this select 1))],'core_performance',false,false]call network_MPExec;
	};
	
	case "score":
	{
		closeDialog 0;
		"Performance" hintC [
		format ["Exec Time: %1",(_this select 3)], 
		format ["PPS Time: %1",(time - dtk_send_time)], 
		format ["Server Uptime: %1",[(serverTime / 60 / 60)] call BIS_fnc_timeToString], 
		format ["Server Average FPS: %1",(_this select 1)], 
		format ["Server Min FPS: %1",(_this select 2)],
		format ["Client Uptime: %1",[((time - dtk_jointime) / 60 / 60)] call BIS_fnc_timeToString], 
		format ["Client Average FPS: %1",diag_fps],
		format ["Client Min FPS: %1",diag_fpsMin],
		format ["Player count: %1",count playableUnits],
		format ["Entities: %1",count allMissionObjects "ALL"],
		format ["Groups: %1",count allGroups]
		];
	};
};