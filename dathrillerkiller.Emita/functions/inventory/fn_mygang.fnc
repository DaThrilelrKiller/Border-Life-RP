private ["_mygang","_gangarray","_c","_gang","_members"];
_mygang  = "";

for "_c" from 0 to (count gangsarray - 1) do 

	{

	_gangarray = gangsarray select _c;
	_gang = _gangarray select 0;
	_members = _gangarray select 1;
	if(name player in _members)then{_mygang = _gang;};

	};

_mygang;
