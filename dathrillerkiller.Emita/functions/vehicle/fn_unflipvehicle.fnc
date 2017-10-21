	private ["_vcl"];
	_vcl = (nearestobjects [getpos player, ["LandVehicle"], 10] select 0);
	if ([player,_vcl] call keys_has) then
	{

	if ((count crew _vcl) > 0) exitWith {systemChat  "The vehicle is not empty!";};

	
	systemChat  "turning your vehicle over, wait 5s within 10meters.";
	sleep 5;

	if (player distance _vcl < 10) then
		{
		_vcl setvectorup [0.001,0.001,1];
		systemChat  "Your vehicle has been reset";	
		}
		else
		{
		systemChat  "Try again, stay within 10m";
		};
	}
	else
	{
	systemChat  "You need the keys to unflip a vehicle";
	};