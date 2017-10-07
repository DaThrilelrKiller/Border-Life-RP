if (dtk_server)exitWith {};
[] spawn 
{
	waitUntil {!isNil "AR_StaticsLoaded"};
	disableSerialization;
	private ["_i","_vcl","_vclClass","_storweight","_maxweight","_stor","_veh","_wephud"];
	1001 cutRsc ["ar_hud","PLAIN"];
	
	_hud = uiNameSpace getVariable "ar_hud";
	_vehhud = _hud displayCtrl 152;
	_playhud = _hud displayCtrl 154;
	_wephud = _hud displayCtrl 155;
	
	for "_i" from 0 to 1 step 0 do 
	{
		uiSleep 0.1;
		_veh = (vehicle player);
		if (_veh != player) then 
		{
			call hud_updatevehicle;
			call hud_updateplayer;
			
			_playhud ctrlSetPosition [safeZoneX - 0.01, safeZoneY];
			_playhud ctrlCommit 0.5;

			_vehhud ctrlSetPosition [safeZoneX - 0.01, safeZoneY];
			_vehhud ctrlCommit 1;
			
			if (currentWeapon _veh == "")then
			{
				_wephud ctrlSetPosition [safeZoneX + safeZoneW, safeZoneY];
				_wephud ctrlCommit 1;
			}
			else
			{
				call hud_updatevehweapon;
				_wephud ctrlSetPosition [safeZoneX + safeZoneW - 0.29, safeZoneY];
				_wephud ctrlCommit 1;
			};
			
		}
		else
		{
			call hud_updateplayer;
			
			_vehhud ctrlSetPosition [(safeZoneX - 0.2), safeZoneY];
			_vehhud ctrlCommit 1;
			
			_playhud ctrlSetPosition [safeZoneX - 0.01, safeZoneY - 0.24];
			_playhud ctrlCommit 1.5;
			
			
			if (((weaponState player) select 0)== "" and ARHP == "" and ARHR == "")then
			{
				_wephud ctrlSetPosition [safeZoneX + safeZoneW, safeZoneY];
				_wephud ctrlCommit 1;
			}
			else
			{
				_wephud ctrlSetPosition [safeZoneX + safeZoneW - 0.29, safeZoneY];
				_wephud ctrlCommit 1;
				call hud_updateweapon;
			};
			
		};
	};
};

hud_init_done = true;


