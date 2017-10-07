private ["_variable"];

_variable = (_this getVariable "dtk_fac_owner");
if (isNil "_variable")then {
_this setVariable ["dtk_fac_owner",getPlayerUID player,true];
systemchat "you have baught that factory";
}else{
systemchat "someone already owns this factory";
};
