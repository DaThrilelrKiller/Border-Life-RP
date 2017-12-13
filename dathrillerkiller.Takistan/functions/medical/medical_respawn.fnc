private ["_unit","_corps","_time"];

_unit = _this select 0;
_corps = _this select 1;
_time = time;

removeAllWeapons _unit;
[]call storage_dropall;

[]spawn medical_Effect; 
 
/* waits until the corps is not moving to prevent another dealth */
waitUntil {(str (velocity _corps)) == '[0,0,0]'};

["ALL",["dtk_side == 'EMS'",format ["%1 Has Died Near %3 (cords: %2)",name player, ([_corps]call Emita_GetGridRef),location_name],2],"network_chat",false,false]call network_MPExec;

/* sets the variables so we know the player is Unconscious and cannot be killed again */
["ALL",player,{_this setUnconscious true;},false,true]call network_MPExec;
["ALL",player,{_this allowDamage false;},false,true]call network_MPExec;

_this call medical_marker;
_this call medical_setPos;
[_unit,_corps,_time] spawn medical_timer;

