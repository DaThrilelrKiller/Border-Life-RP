private ["_item","_amount","_info","_percentage","_ounces","_weight","_gender","_hours","_return"];

_item = _this select 0;
_amount = _this select 1;
_info = _item call bal_info;
_percentage = _info select 0;
_ounces = _info select 1;

_weight = 150;
_gender = 0.73;
_hours = 4;

_return = _amount * _ounces * _percentage;
_return = abs((_return * 5.14 / (_weight * _gender)) - 0.015 * _hours);

_return