
KeyPressY = 
{
if(dialog)exitwith{closeDialog 0;};
if(!INV_shortcuts)exitwith{}; 
if (animationstate player == "actspercmstpsnonwrfldnon_interrogate02_forgoten")exitWith {};
if (lifeState player == "UNCONSCIOUS")exitWith{};
call dance_open;
};

Keypress9 = 
{
if (!AM_temp_carrying) then {createDialog "AM_CheckpointBuilder";}else{[] call Checkpoint_Drop;};
};

KeyPressF5 = 
{
if(INV_shortcuts)then{INV_shortcuts=false; titletext["SFG Keys Off", "PLAIN DOWN"];[] execVM "actions\removeActions.sqf"}else{INV_shortcuts=true; titletext["SFG Keys On", "PLAIN DOWN"];[] execVM "actions\EMSactions.sqf"};
};

KeyPressL = 
{
if(!INV_shortcuts)exitwith{};

	_vcl = call keys_grabVehicle;

	if (locked _vcl) then 
	{
		systemChat "Vehicle Unlocked";
		[_vcl,[_vcl,false],'network_lock',false,true]call network_MPExec;
	}
	else
	{
		systemChat "Vehicle Locked";
		[_vcl,[_vcl,true],'network_lock',false,true]call network_MPExec;
	};
};

KeyPressT = 
{
	if(!INV_shortcuts)exitwith{};
	if(dialog)exitwith{closeDialog 0;};
	_vcl = (nearestobjects [getpos player, ["LandVehicle", "Air", "ship", "TKOrdnanceBox_EP1"], 12] select 0);
	if (player != driver _vcl)exitwith{systemChat  "You must be in the drivers seat to get to the trunk";};
	if(!([player,_vcl]call keys_has) and typeof _vcl == "TKOrdnanceBox_EP1")exitwith{systemChat  "You do not have the keys to this hideout.";};
	if(!([player,_vcl]call keys_has))exitwith{systemChat  "You do not have the keys to this vehicle.";};
	if(UpgradingCar)exitWith{systemChat  "You cant use your trunk while upgrading your car";};
	if(!isnull _vcl)then
	{
	[_vcl]call storage_trunk;
	};
};

KeyPressE = 
{
	if(isstunned) exitwith{};
	if(!INV_shortcuts)exitwith{}; 	
	if(keyblock)exitwith{}; 	
	if(dialog)exitwith{closeDialog 0;}; 	
	if(local_arrest == 1)exitwith{}; 	 
	if (call garage_near && {(vehicle player != player)})exitWith
	{
		[ (dtkgarage call shops_index)]call shops_openshop;
	};

	private ["_civ"];  	
	for [{_i=1}, {_i < 3}, {_i=_i+1}] do     		
	{  		
		if(vehicle player != player) exitwith{};         		
		_range = _i;        		
		_dirV = vectorDir vehicle player;        		
		_pos = player modelToWorld [0,0,0];         	
		_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];        	 	
		_men    = nearestobjects [_posFind,["Man", "RUBasicAmmunitionBox", "DTK_InfoStand","RUSpecialWeaponsBox","Barrels"], 1] - [player]; 		
		_atms   = nearestObjects [_posFind,["Man", "tcg_ATM"],2]; 		
		_civ    = _men select 0; 		
		_atm	= _atms select 0; 		 		
		if(isciv and !(isnull _civ) and isPlayer _civ) exitwith  			
		{  			
			_i = 4; 			
			call compile format['[0,0,0, ["civinteraktion", "%1", %1]] execVM "scripts\interact.sqf";', _civ]; 				 			
		};  		
		if(!(isnull _civ) and _civ in shopusearray) exitwith  			
		{  			
			_i = 4; 			
			if(iscop and _civ in drugsellarray)exitwith{_civ execVM "scripts\drugsearch.sqf";}; 			
			_id = _civ call shops_index; 			
			[_id]call shops_openshop;				
		};  		
		if(!(isnull _atm) and _atm in bankflagarray) exitwith  			
		{  			
			_i = 4; 			
			if(!local_useBankPossible)exitwith{hint "The ATM rejected your card"}; 			
			call atm_open;			 			
		};  		
	};  	

	if(vehicle player == player) exitwith  		
	{  		
			private ["_vcl"];  		
			for [{_i=1}, {_i < 3}, {_i=_i+1}] do     			
			{         			
				_range = _i;        			
				_dirV = vectorDir vehicle player;        			
				_pos = player modelToWorld [0,0,0];         		
				_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];        	 		
				_vcls    = nearestobjects [_posFind,["LandVehicle", "Air", "ship"], 2]; 			
				_vcl     = _vcls select 0;  			
				if(!(isnull _vcl))exitwith{_i = 4;};  			
			}; 		

		if(locked _vcl)exitwith{}; 		 		
		if(_vcl emptyPositions "Driver" > 0)exitwith   {player action ["getInDriver", _vcl]}; 		
		if(_vcl emptyPositions "Gunner" > 0)exitwith   {player action ["getInGunner", _vcl]}; 		
		if(_vcl emptyPositions "Commander" > 0)exitwith{player action ["getInCommander", _vcl]}; 		
		if(_vcl emptyPositions "Cargo" > 0)exitwith    
		{
			player action ["getInDriver", _vcl];
			_vcl spawn 
			{
				keyblock=true;
				sleep 0.5;player 
				moveincargo _this; 
				keyblock=false;
			};
		}; 			 		
	};  	
	_vcl  = vehicle player;  	
	if(_vcl != player) exitwith  		
	{  		
		if(locked _vcl)exitwith{systemChat  "The vehicle is locked."}; 		
		if(speed _vcl > 30)exitwith{systemChat  "The vehicle is moving too fast"}; 		
		player action ["getOut", _vcl]; 		 		
	};
};

KeyPressShiftF = 
{
 	if(!INV_shortcuts)exitwith{};  	
	if((vehicle player == player) and call INV_isArmed) then  		
	{ 		 		
		_men = nearestobjects [getposatl player, ["Man"], 2] - [player]; 		 		
		_men spawn 			
		{ 	
			(format ["%1 switchmove ""%2"";", player, "AwopPercMstpSgthWnonDnon_end"]) call network_broadcast; 			
			sleep 0.2;  			
			if(count _this > 0) then  				
			{  				
			_civ = _this select 0;  				
			if(_civ distance player > 2 or !isPlayer _civ)exitwith{}; 				
			[_civ,[player],{["hit", (_this select 0), "Melee", 1] execVM "scripts\stun.sqf"},false,false]call network_MPExec;
			systemChat  "You Stunned This Player!";			  				
			}; 					 			
		};   		
	};
};

KeyPress1 = 
{
if(!INV_shortcuts)exitwith{}; 	
if(dialog)exitwith{closeDialog 0;}; 	
createDialog "ipad";
};

KeyPress3 = 
{
	if(!INV_shortcuts)exitwith{}; 	
	if(keyblock or vehicle player != player)exitwith{}; 	
	keyblock=true; 
	[] spawn 
	{
	sleep 2;
	keyblock=false;
	}; 	
	player playmove "amovpercmstpssurwnondnon";
};

KeyPressShift =
{
	_vcl = vehicle player; 	
	_type = typeof vehicle player; 	
	_class = typeOf _vcl; 	
	if(_vcl == player)exitwith{}; 	
	if(typeof _vcl == "Smallboat_1" or typeof _vcl == "Smallboat_2") then  		
		{  		
		_vel = velocity _vcl; 		
		_spd = speed _vcl; 		
		if(_spd <= 20)then{_vcl setVelocity [(_vel select 0) * 1.001, (_vel select 1) * 1.001, (_vel select 2) * 0.99]}; 		
		if(_spd <= 30 and _spd > 20)then{_vcl setVelocity [(_vel select 0) * 1.002, (_vel select 1) * 1.002, (_vel select 2) * 0.99]}; 		 		
	};  	
	if(typeof _vcl == "Fishing_Boat") then  		
	{  		
		_vel = velocity _vcl; 		
		_spd = speed _vcl; 		
		if(_spd <= 30)then{_vcl setVelocity [(_vel select 0) * 1.001, (_vel select 1) * 1.001, (_vel select 2) * 0.99]}; 		 		
	};  	

	if(_class in cararray) then 	
	{ 	
		_vel = velocity _vcl; 	
		_vcl setVelocity [(_vel select 0) * 1.005, (_vel select 1) * 1.005, (_vel select 2) * 0.99]; 	 	
	}; 	
	_lvl = _vcl getvariable "tuning"; 	
	if(isEngineOn _vcl and !isnil "_lvl") then  		
	{ 		 		
		_vel = velocity _vcl; 			
		_vcl setVelocity [(_vel select 0) * _lvl, (_vel select 1) * _lvl, (_vel select 2) * 0.99];
	};
};

KeyPress7 = 
{
if(dialog)exitwith{closeDialog 0;};
if(!INV_shortcuts)exitwith{};
if !(SwagDevs) exitWith {};
call admin_console;
};

KeyPress6 = 
{

};

KeypressHolsterPistol = 
{
[currentWeapon player,"ARHP"]call main_holster;
};
KeypressHolsterRifle = 
{
[primaryWeapon player,"ARHR"]call main_holster;
};

display_keypress = {
	private["_control","_code","_shift","_ctrlKey","_alt","_handled"];
	_handled = false;
	_control = _this select 0;
	_code = _this select 1;
	_shift = _this select 2;
	_ctrlKey = _this select 3;
	_alt = _this select 4;
	_disallowed = [1,2,3,4,5,6,41,7,24,21,8,42,63,38,20,18,33,57,17,62];
	
	if(_code in _disallowed) then {_handled = true;};
	_handled;
};