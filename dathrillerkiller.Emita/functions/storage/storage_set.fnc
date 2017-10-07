/*set variable of inventoy*/
private ["_object","_array"];

_object = _this select 0;
_array = _this select 1;

if (_object == player) then
{
_object setVariable ["dtk_storage",_array,true];
}
else
{
_object setVariable ["dtk_storage",_array,true];
};