/*
TBD
*/

chopavailable = false;
 
private["_vcl","_tune","_payout","_pay1","_pay2","_pay3","_pay4","_pay5","_pay6"];
systemChat  "Please get back into your vehicle to strip it. You have 10 seconds!";
sleep 10;
_vcl = vehicle player;
if(player == _vcl) exitwith {systemChat  "You have must be in a vehicle to use this shop!";};

_tune = _vcl getvariable "tuning";

_payout = 0;
_pay1 = 8000;
_pay2 = 15000;
_pay3 = 25000;
_pay4 = 45000;
_pay5 = 60000;
_pay6 = 65000;

systemChat  "Stripping car of nice things! Please Wait!";
sleep 5;
systemChat  "Stealing 8/8 stereo system! Please Wait!";
sleep 5;

	switch (_tune) do {
		case 1: {_payout = _payout + _pay1;_vcl setvariable["tuning",0,true];};
		case 2: {_payout = _payout + _pay2;_vcl setvariable["tuning",0,true];};
		case 3: {_payout = _payout + _pay3;_vcl setvariable["tuning",0,true];};
		case 4: {_payout = _payout + _pay4;_vcl setvariable["tuning",0,true];};
		case 5: {_payout = _payout + _pay5;_vcl setvariable["tuning",0,true];};
		case 6: {_payout = _payout + _pay6;_vcl setvariable["tuning",0,true];};
		};

systemChat  format["You made $%1 from the car parts!",_payout];
[player,"geld",_payout] call storage_add;
[player,"Striped A Vehicle In The Chopshop",wantedamountforstriping]call cdb_addWarrant;


sleep 5;
chopavailable = true;