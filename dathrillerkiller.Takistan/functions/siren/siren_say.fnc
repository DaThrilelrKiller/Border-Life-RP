if (isServer) exitWith {};
private ["_sirnobj","_sleep","_type"];

_sirnobj = _this;
_type = typeOf _sirnobj;
_sleep = _type call siren_getSleep;

while {!isNull _sirnobj} do
{
_sirnobj say _type;
sleep _sleep;
};
