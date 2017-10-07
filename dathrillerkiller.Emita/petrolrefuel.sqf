
_Vehicle = cursorTarget;
if (!(_Vehicle isKindOf "LandVehicle" or _Vehicle isKindOf "Air" or _Vehicle isKindOf "ship") or (isNull _Vehicle)) exitWith {systemChat "You Must Be Looking At The Vehicle You Are Trying To Fill!";};
_fuel = fuel _Vehicle;
_fuelstartposition = getpos _Vehicle;
_exitvar = 0;
if(TankenCost >= maxpetroluse)exitwith{systemChat  "Oil Import Price Is Too High, Therefore There Is No Gas!";};
if (_fuel >= 0.99) exitWith 

{

systemChat  localize "STRS_gasstation_bereits_getankt";

};

while {((fuel _Vehicle) < 0.99)} do 

{
if(TankenCost < maxpetroluse)then{TankenCost = TankenCost + petroluse};
if (not([player,'geld',-TankenCost] call storage_add)) exitWith 

	{

	systemChat  localize "STRS_gasstation_tanken_money";    
	_exitvar = 1;

	};

if (vehicle player distance _fuelstartposition > 3) exitWith 

	{

	systemChat  localize "STRS_gasstation_tanken_vclmoved"; 
	_exitvar = 1;

	};

_Vehicle setFuel ((fuel _Vehicle)+0.1);
cutText [format[localize "STRS_gasstation_tanken_zwischenmsg",round(fuel _Vehicle * 100)],"PLAIN DOWN",64439];

sleep 1;

};

publicvariable "tankencost";

if (_exitvar == 1) exitWith {};

systemChat  localize "STRS_gasstation_tanken_finished";