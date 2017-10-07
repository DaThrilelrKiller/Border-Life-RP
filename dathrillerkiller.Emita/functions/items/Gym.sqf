private["_art","_item"];
_art = _this select 0;
_item = _this select 1;
if (_art == "use") then 

{

switch (_item) do 
{
	case "GymMem1" :
	{
		INV_Tragfaehigkeit = 70;
		systemChat  format["You now can lift up to %1 pounds, but upon death you loose your strength", INV_Tragfaehigkeit];
		[player,_item,-1] call storage_add;
	};
	case "GymMem2" :
	{
		INV_Tragfaehigkeit = 80;
		[player,_item,-1] call storage_add;
		systemChat  format["You now can lift up to %1 pounds, but upon death you loose your strength", INV_Tragfaehigkeit];
		
	};
	case "GymMem3" :
	{
		INV_Tragfaehigkeit = 90;
		[player,_item,-1] call storage_add;
		systemChat  format["You now can lift up to %1 pounds, but upon death you loose your strength", INV_Tragfaehigkeit];
	};

	case "GymMem4" :
	{
		INV_Tragfaehigkeit = 100;
		[player,_item,-1] call storage_add;
		systemChat  format["You now can lift up to %1 pounds, but upon death you loose your strength", INV_Tragfaehigkeit];
		_num = round random 100;
		sleep 5;	
		if (_num < 20) exitwith
		{
		systemChat  "You have a sudden rush to your heart from an overdose and are now dying";
		player setdamage .5;
		sleep 10;
		player setdamage .7;
		sleep 5;
		player setdamage 1;
		};
	};
};

};