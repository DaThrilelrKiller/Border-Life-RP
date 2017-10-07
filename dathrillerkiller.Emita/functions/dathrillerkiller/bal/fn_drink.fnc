private ["_item","_amount"];

if (ar_drinking) exitWith {systemchat "you are already drinking somting"};
ar_drinking = true;

_item   = _this select 1;
_amount = _this select 2;


ar_balhours = if (ar_ballevel > 0)then {ar_balhours}else {time + 300};/*time player started to drink*/
ar_ballevel = ar_ballevel + ([_item,_amount]call bal_calculate);/*blood level*/

[]spawn bah_loop;