disableSerialization;
sleep 1;

private ["_a"];
for "_a" from 0 to 1 step 0 do 
{
	waitUntil {not(isnull (findDisplay 49))};
	
	_abortctrl = (findDisplay 49) displayCtrl 104;
	_Respawnctrl = (findDisplay 49) displayCtrl 1010;
	_Respawnctrl ctrlEnable false;
	_abortctrl ctrlEnable false; 
	_title = (findDisplay 49) displayCtrl 523;
	
	_enCtrl = [_Respawnctrl,_abortctrl] spawn 
	{
		disableSerialization;
		_Respawnctrl = _this select 0;
		_abortctrl = _this select 1;
		
		if ((lifeState player == "UNCONSCIOUS") or (!alive player) or (animationstate player == "actspercmstpsnonwrfldnon_interrogate02_forgoten"))then
		{
			if (isnull (findDisplay 49)) exitWith {};
			_abortctrl ctrlSetText "Cannot Abort While Dead Or Restrained!";
		}else
		{
			[_abortctrl]spawn 
			{
				disableSerialization;
				_abortctrl = _this select 0;
				private["_e"];
				for "_e" from 10 to 1 step -1 do 
				{
					if (isnull (findDisplay 49)) exitWith {};
					_text1 = format ["Please Wait: (%1)",_e]; 
					if (_e == 5) then 
					{
						/*Saves player acount to prevent dupping*/
						private ["_save"];
						_save = [player,[ 	["Main", "BankAcount", kontostand], ["Main", "NAME",name player], ["Main", "Hunger", INV_hunger], [ar_side, "Inventory", player getVariable "dtk_storage"], 	[ar_side, "INV_Lizenz", (player getvariable "cdb_license")],[ar_side, "VehiclesLand", INVVehiclesLand],[ar_side, "ARHP", ARHP],[ar_side, "ARHR", ARHR],[ar_side, "Weapons", weapons player],[ar_side, "Magazines", magazines player],[ar_side, "INVAppsInstalled",INVAppsInstalled]]];
						["SERVER",_save,"S_statsave_SaveToDB",false,false]call network_MPExec;
						_text1 = format ["Saving Stats",_e]; 
					};
					_abortctrl ctrlSetText _text1;
					sleep 1;
				};
				_abortctrl ctrlSetText "Abort";
				_abortctrl ctrlEnable true; 
			};
		};
		
		_Respawnctrl ctrlSetText "Respawn Disabled";

	};
	
	_enTitle = [_title] spawn 
	{
		disableSerialization;
		_ctrl3 = _this select 0;
		_sText2 = ctrlText _ctrl3;
		_text3 = format ["SFG Life"]; _ctrl3 ctrlSetText _text3;
	};

	waitUntil {isNull (findDisplay 49)};
	if (!scriptDone _enCtrl) then 
	{
		terminate _enCtrl;
		terminate _enTitle;
	};
};