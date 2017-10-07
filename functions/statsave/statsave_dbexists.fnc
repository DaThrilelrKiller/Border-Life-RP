private["_data"];
_data = "iniDB" callExtension format["exists;%1", _this];
_data = call compile _data;
		
if((_data select 0) && (_data select 1)) then {true;} else {false;};