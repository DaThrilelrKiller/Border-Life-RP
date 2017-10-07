private ["_art","_safe","_item","_itemAmount","_RequiredAmount","_west","_near"];

_art  = _this select 0;
_safe = _this select 1;
_item = "safehack";

_itemAmount = [player,_item] call storage_amount;

if (_art == "crackSafe") then
{
	_item 			= "safehack";
	_RequiredAmount = 1;
	_itemAmount 	= [player,_item] call storage_amount;
	_west = playersNumber west;
	
	if (iscop) exitWith
	{
		systemChat  "Police may not crack the safe code!";
	};

	if (_west < 1) exitwith {systemChat  "You need 1 Police Officers online to rob the Bank!";};
	
	if (_itemAmount < _RequiredAmount) exitWith
	{
		systemChat  "You must have a Vault Code Cracker!";
	};	
	
	if (isCrackingSafe == 1) exitWith
	{
		systemChat  "You are already cracking a safe!";
	};	
	
	if (isCrackingSafe == 0) then
	{	
		isCrackingSafe = 1;
		[player,_item,-1] call storage_add;
		
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
		
		if (round(random 100) < 70) exitWith
		{
			safeCrackFailed = safeCrackFailed + 1;
			player sideChat "Your cracker reads: [*%^&Error#$@$d]";
			if (safeCrackFailed >= 2) then
			{	
			
				player sideChat "Speedys Security INC Has Detected You Trying To Crack The Safe";			
				format['[0,1,2,["roberror", %1]] execVM "bankrob.sqf";', _safeh] call network_broadcast;
				_bankName = "BANK";
				('if(iscop) then {playsound "beep";}') call network_broadcast;
				format ['systemChat "Speedys Security INC Has Detected An Attempt To Hack Into The Bank Safe";'] call network_broadcast;
				
				safeCrackFailed = 0;
			};
			isCrackingSafe = 0;
		};
		
		player sideChat format["Your cracker reads: [%1]", safeCodeSet];
		
		safeCrackFailed = 0;
		isCrackingSafe = 0;
	}
	else
	{
		_near = 0;
	};
};