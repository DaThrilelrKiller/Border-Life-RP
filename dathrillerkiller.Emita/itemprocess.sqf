

if (processscriptrunning == 1) exitwith { systemChat  "We're Working as fast as we can. Please wait till we are done before giving us another task";
spamcount = spamcount + 1; 
if (spamcount == 5) then {systemChat "I have spammed the Process script 5 times, ignoring the text that tells me I cannot run this script multiple times"};
if (spamcount == 10) then {systemChat "I have spammed the Process script 10 times, ignoring the text that tells me I cannot run this script multiple times"};
}; 
processscriptrunning = 1;
 _this = _this select 3;
 _item1 = _this select 0;
 _item2 = _this select 1;
 _req = _this select 2;
 _license = _this select 3;
 _nitem1 = [player,_item1] call storage_amount;
 _name1 = _item1 call INV_getitemName;
 _name2 = _item2 call INV_getitemName;
 if(!(_license call licenses_has))exitwith{systemChat  "you do not have the license to do this";
 processscriptrunning = 0;};
 _multi = floor(_nitem1/_req); 
_total = _req*_multi;  
[player,_item1,-_total] call storage_add;
[player,_item2,_multi] call storage_add;
systemChat  format["%1 %2 was processed into %3 %4!", _total, _name1, _multi, _name2];
processscriptrunning = 0; 


