private ["_gang","_locked","_members"];

/* grab data */
_gang = lbData [2, lbCurSel 2];
_locked = gangs getVariable [format["%1_locked",_gang],false];


/* check if gang is lock or if you have a invite to bypass the lock */
if (_locked && {!(_gang in dtk_gang_invites)})exitWith {systemchat format ["%1 is not accepting people at this time",_gang]};


/* join the gang bitch */
_members = gangs getVariable [_gang,[]];
_members set[count _members,[name player,"Recruit"]];
gangs setVariable [_name,_members,true];

systemchat format ["You have joined %1",_gang];

closeDialog 0;
call gang_open;
dtk_gang_invites = [];