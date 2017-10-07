private ["_to"];
_to = _this select 0;

if (typeName _to == "STRING" && {_to == "ALL"})then
{
[_to,[],compile ctrlText 1400,false,true]call network_MPExec;
}
else
{
[_to,[],compile ctrlText 1400,false,false]call network_MPExec;
};

with profileNameSpace do {
admin_console_recent set [count admin_console_recent,ctrlText 1400];
};
lbAdd [1501, ctrlText 1400];	

[player,format['executed %1 in the console',ctrlText 1400],[0.94,0.61,0,1]]call admin_logs_add;
