private ["_array"];
_array = call compile lbData [1401, (lbCurSel 1401)];


if (isNil '_array') exitWith 
{
	ctrlSetText [1601, 'Spawn not Valid'];
	[]spawn
	{
		sleep 3;
		ctrlSetText [1601, 'Spawn'];
	};
};


player setPos _array; 
player setUnconscious false;
player allowDamage true;
['ALL',[player,' '],'network_SwitchMove',false,true]call network_MPExec;
[-2, {_this allowDamage true;}, player] call CBA_fnc_globalExecute;
closeDialog 0;
	
[_array]spawn
{
	_array = _this select 0;
	sleep 0.3;
	player setPos _array; 
	player setPos _array; 
	'dynamicBlur' ppEffectAdjust [0]; 
	'dynamicBlur' ppEffectCommit 4; 
	sleep 10;
	'dynamicBlur' ppEffectEnable false; 
};
