_this = _this select 3;
_art  = _this select 0;
_geld = [player,"geld"] call storage_amount;

if (_art == "ClientWahl") then 
{

	if (isNil("WahlSperre")) then 
	{
		WahlSperre = false;
	};															

	if (WahlSperre) exitWith {systemChat  "You Just Voted For A Governor!";};				
	_spielernum   = call compile (_this select 1);	
	format["if (dtk_server) then {[0,1,2,[""ServerWahl"", %1, %2]] execVM ""scripts\mayor.sqf"";};", _spielernum, rolenumber] call network_broadcast;										
	systemChat  format[localize "STRS_regierung_votedfor", (playerstringarray select _spielernum)];									
		
	WahlSperre = true;														
	sleep 60;		
	WahlSperre = false;
};
	
if (_art == "ServerWahl") then 
{

	_kandidatnum = (_this select 1);     															
	_waehlernum  = ((_this select 2)-1); 													

	for [{_i=0}, {_i < count(WahlArray)}, {_i=_i+1}] do 
	{															
		_arr = (WahlArray select _i);																		
		if (_waehlernum in _arr) exitWith {_arr = _arr - [_waehlernum];WahlArray SET [_i, _arr];};		
	};

	WahlArray SET [_kandidatnum, ((WahlArray select _kandidatnum )+ [_waehlernum])];
};

if (_art == "serverloop") then 
{	
	_currentMayor = -1;												
	private ["_i"];
	for "_i" from 0 to 1 step 0 do 
	{
																																																												
		for [{_i=0}, {_i < 10}, {_i=_i+1}] do 
		{																																								
			sleep 60;					
			
			for [{_k=0}, {_k < count(WahlArray)}, {_k=_k+1}] do
			{
				if (not((playerstringarray select _k) call ISSE_UnitExists)) then {WahlArray SET [_k, [] ];};
			};			
		};																																																

		_MaxStimmen = 1;																		
		_MaxPos     = -1;												

		for [{_i=0}, {_i < count(WahlArray)}, {_i=_i+1}] do 
		{																																										
			if ( ((count (WahlArray select _i)) > _MaxStimmen) and ((playerstringarray select _i) call ISSE_UnitExists) ) then 
			{
																																													
				_MaxStimmen = (count (WahlArray select _i));																																																				
				_MaxPos     = _i;		

			};		

		};

		if (_MaxPos == -1) then 
		{	
			'["true","Government",localize "STRS_regierung_nomajor"]call Main_Notification;'call network_broadcast;			
			_currentMayor = -1;																		
		} else {
																																																																	
			if (_currentMayor == _MaxPos) then 
			{																																								
				"hint localize ""STRS_regierung_majorstays"";" call network_broadcast;																																										
			} else {																																				
				_currentMayor = _MaxPos;																																																				
				_MayorString  = (playerstringarray select _currentMayor);																																																				
				format["hint format[localize ""STRS_mayor_new"", ""%3"", %2]; if ((rolenumber-1) == %1) then {%3 call TurnMayorFunc;};", _MaxPos, _MaxStimmen, _MayorString] call network_broadcast;
			};		
		};	
		sleep 1;
	};
};

if (_art == "steuernMayor") then 
{								
	_item = _this select 1;			
	_mag  = _this select 2;													
	_weap = _this select 3;							
	_vcl  = _this select 4;							
	_bank = _this select 5;
	
	call compile format ["
	(INV_ItemTypenArray select 0) SET [2, %1]; 
	(INV_ItemTypenArray select 1) SET [2, %2]; 
	(INV_ItemTypenArray select 2) SET [2, %3]; 
	(INV_ItemTypenArray select 3) SET [2, %4];						
	bank_steuer = %5; 
	publicVariable 'INV_ItemTypenArray';
	publicVariable 'bank_steuer';
	", _item, _vcl, _mag, _weap, _bank];
	
	"hint ""The Governor Has Changed The Taxes!"";"call network_broadcast;
};