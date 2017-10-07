_target = _this select 0;
_dog = player getVariable "CLAY_DogUnit";
(DOGCTRL_MENU select 6) set [6, "0"];

If (_dog distance _target <= 4) Then
{
_dog doMove getPos _target;		
systemChat  format ["Checking %1 For Illegal Contraband!", _target];
drugsvalue = 0;	
(format ["if (player == %1) then {[""drugs"", %2] execVM ""civmenu.sqf"";};", _target, player]) call network_broadcast;								

}

Else { 
_dog doMove getPos _target;
systemChat  "Your Dog Is Not Close Enough To Suspect!"};

(DOGCTRL_MENU select 6) set [6, "1"];