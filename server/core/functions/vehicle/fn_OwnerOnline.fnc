private ["_veh","_uids","_return","_owners"];

_veh = _this;
if (isNil {_veh getVariable "DTK_OwnerUID"})exitWith {true};
_uids = uids;
_return = false;
_owners = (_veh getVariable "DTK_OwnerUID")select 0;

{
if (_x in _uids)then {_return = true};
}forEach _owners;

_return

