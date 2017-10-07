private ["_i","_time"];

ar_mayor_rt = (time + 2);
ar_gangs_rt = (time + 60);
ar_taxi_rt = (time + 10);
ar_assassination_rt = (time + 10);
ar_hostage_rt = (time + 10);
ar_druguse_rt = (time + 5);
ar_hunting_rt = (time + 120);
ar_robpool_rt = (time + 30);
ar_serverCleaner_rt = (time + 900);
ar_paycheck_rt = (time + 300);

for "_i" from 0 to 1 step 0 do 
{
	_time = time;

	if (_time > ar_gangs_rt) then {[0, 0, 0, ["serverloop"]] execVM "gangs.sqf";};
	if (_time > ar_taxi_rt) then {[0,0,0,["serverloop"]] execVM "taxi.sqf";};
	if (_time > ar_assassination_rt) then {[0,0,0,["serverloop"]] execVM "assassination.sqf";};
	if (_time > ar_hostage_rt) then {[0,0,0,["serverloop"]] execVM "hostage.sqf";};
	if (_time > ar_druguse_rt) then {[] execVM "\MPMissions\Server\druguse.sqf";};
	if (_time > ar_hunting_rt) then {[] execVM "\MPMissions\Server\hunting.sqf";};
	if (_time > ar_robpool_rt) then {[] execVM "\MPMissions\Server\robpool.sqf";};
	if (_time > ar_serverCleaner_rt) then S_Main_ServerCleaner;
	if (_time > ar_paycheck_rt) then {
	["ALL",[],"core_paycheck",false,false]call network_MPExec;
	ar_paycheck_rt = (time + 300);
	};

	
	sleep 1;
};