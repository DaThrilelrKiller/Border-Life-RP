private ["_geld"];

_geld = [player,"geld"] call storage_amount;
[player,"geld", -_geld] call storage_add;
Kontostand = Kontostand + _geld;
systemchat format ["You have deposted %1 into your bank acount",[_geld] call Main_FormatMoney];

closeDialog 0;