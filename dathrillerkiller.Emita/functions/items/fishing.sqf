private ["_fishingarray","_xx","_yy","_art","_item","_anzahl","_isInArea","_resource","_rand","_randres","_max","_infos","_name","_amount","_avail"];
_xx = getpos player select 0;
_yy = getpos player select 1;

_art = _this select 0;

if(iscop)exitwith{};

if (_art == "use") then 

{

if(working)exitwith{systemChat  "You're still fishing, wait to cast again";};

_item   = _this select 1;
_anzahl = _this select 2;

working=true;
_isInArea=false;

	{
	
	if (player distance (getMarkerPos ((_x select 0) select 0)) < ((_x select 0) select 1)) then {_isInArea = true; _fishingarray = _x};
	true
	} count fishingarray;

_resource = _fishingarray select 1;
_rand = round (random 10);
_randres = fishingarray1 select _rand;
_max      = _fishingarray select 2;
_infos    = _resource call INV_getitemArray;
_name     = (_infos call INV_getitemName);

switch true do
{
case (!_isInArea and surfaceIsWater [_xx, _yy]):
{
if(vehicle player iskindof "SHIP") then
	{
	titletext ["Casting...", "PLAIN DOWN"];
	totalamount=0;
	_max = 3;
	["ALL",[player,"AwopPercMstpSgthWnonDnon_end"],"network_SwitchMove",false,true]call network_MPExec;
	_amount = round (random _max);
	sleep 5;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	
		if (_amount > 0) then
		{
		titletext [format ["You caught %1!", _randres], "PLAIN"];
		systemChat  format["You got %1 %2.", _amount, _randres];
		}
		else
		{
		titletext ["Nothing Caught you might Recast...", "PLAIN DOWN"];
		};
		_avail = floor (INV_Tragfaehigkeit - ([player]call storage_kg));
		totalamount = totalamount + _amount;
			
	if((totalamount*2) >= _avail)exitwith{totalamount = (_avail/2); systemChat  "You cannot hold any more"; _i=6;};	
	totalamount = (floor (totalamount));
	[player,_randres,totalamount] call storage_add;
	
	}
	else
	{
	titletext ["Casting...", "PLAIN DOWN"];
	totalamount=0;
	_max = 1;
	["ALL",[player,"AwopPercMstpSgthWnonDnon_end"],"network_SwitchMove",false,true]call network_MPExec;
	_amount = round (random _max);
	sleep 5;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	
		if (_amount > 0) then
		{
		titletext [format ["You caught %1!", _randres], "PLAIN"];
		systemChat  format["You got %1 %2.", _amount, _randres];
		}
		else
		{
		titletext ["Nothing Caught you might Recast...", "PLAIN DOWN"];
		};
		_avail = floor (INV_Tragfaehigkeit - ([player]call storage_kg));
		totalamount = totalamount + _amount;
			
	if((totalamount*2) >= _avail)exitwith{totalamount = (_avail/2); systemChat  "You cannot hold any more"; _i=6;};	
	totalamount = (floor (totalamount));
	[player,_randres,totalamount] call storage_add;
	
	};
};

case (_isInArea and _resource != "whale" and !(vehicle player iskindof "AIR")):
{
totalamount=0;
	["ALL",[player,"AwopPercMstpSgthWnonDnon_end"],"network_SwitchMove",false,true]call network_MPExec;
	_amount = round (random _max);
	sleep 5;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
			
		if (_amount > 0) then
		{
		titletext [format ["You caught %2 %1!", _name, _amount], "PLAIN"];
		}
		else
		{
		titletext ["Nothing Caught try recasting...", "PLAIN DOWN"];
		};
		sleep 5;
		_avail = floor (INV_Tragfaehigkeit - ([player]call storage_kg));
		totalamount = totalamount + _amount;
		if((totalamount*2) >= _avail)exitwith{totalamount = (_avail/2); systemChat  "maximum weight reached"; _i=6;};
		systemChat  format["You got %1 %2.", _amount, _name];
		totalamount = (floor (totalamount));
		[player,_resource,totalamount] call storage_add;

};
case (_resource == "whale"):
{
totalamount=0;
	_max = 1;
	for [{_i=0}, {_i < 2}, {_i=_i+1}] do 

		{
		
		["ALL",[player,"AwopPercMstpSgthWnonDnon_end"],"network_SwitchMove",false,true]call network_MPExec;
		_amount = round (random _max);
		titletext ["Fishing Whale takes time..", "PLAIN DOWN", 0.1];
		
		sleep 15;
		_avail = floor (INV_Tragfaehigkeit - ([player]call storage_kg));
			
		totalamount = totalamount + _amount;
		if((totalamount*2) >= _avail)exitwith{totalamount = (_avail/2); systemChat  "maximum weight reached"; _i=6;};
		systemChat  format["You got %1 %2.", _amount, _name];
		
		};
	totalamount = (floor (totalamount));
	[player,_resource,totalamount] call storage_add;
};
default {systemChat  "You must be in the area with a BOAT to fish!";working = false;};
};

working=false;
};