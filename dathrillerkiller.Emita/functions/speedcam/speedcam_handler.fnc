
private ["_penalty","_car","_speed","_type","_infos","_license","_demvar","_newdemerits","_i"];

for "_i" from 0 to 1 step 0 do 
{
	
_car    = vehicle player;

if ((_car  animationPhase "ani_lights") != 0.1)then
{
	{
	_speed  = speed _car;
	if ((player == driver _car) and (_car distance _x < 40) and (_speed >= 100) and !(_car iskindof "Air")) then 
		{ 

		[_x,"speedcam",100]call Main_NetSay3D;
		titleCut [" ","white in",1];
		if(_speed >= 100  && {_speed < 110}) then {_penalty = 1};
		if(_speed >= 110 && {_speed < 130}) then {_penalty = 2};
		if(_speed >= 130 && {_speed < 150}) then {_penalty = 3};
		if(_speed >= 150 && {_speed < 170}) then {_penalty = 6};
		if(_speed >= 170 		 ) then {_penalty = 7};

		systemChat  format["You have just been flashed by a speed camera Slow down! (Limit: 90, Speed: %1)", round _speed];
		}; 

	} count speedcam_array;
};

sleep 0.5;

};
