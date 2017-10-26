private ["_gang","_locked","_text"];

/* grabs needed variables */
_gang = player call gang_name;
_locked = gangs getVariable [format["%1_locked",_gang],false];
_locked = !_locked;

/* toggles gang lock/unlock */
gangs setVariable [format["%1_locked",_gang],_locked,true];

/* notify the player */
_text = ["Un-Locked","Locked"]select _locked;
systemchat format ["%1 %2",_gang,_text];

closeDialog 0;
call gang_open;
