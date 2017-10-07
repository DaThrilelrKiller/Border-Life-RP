_this = _this select 3;
_art  = _this select 0;

if(_art == "create") then

{

_text = _this select 1;
_name = name player;
_geld = [player,"geld"] call storage_amount;
_exitvar=false;

if(_text == "cops")exitwith{systemChat  "You Cant Use This Name!"};

if(gangmember)exitwith{systemChat  "You Are Already In A Gang!"};

for "_c" from 0 to (count gangsarray - 1) do {if (((gangsarray select _c) select 0) == _text) exitWith {_exitvar = true;};};

if(_exitvar)exitwith{systemChat  "A Gang Already Holds This Name!"};

if ((_text call string_lenght) > 30 or (_text call string_lenght) < 3) exitWith {systemChat  "The Name Entered Is To Long Or Short!";};

if(_geld < gangcreatecost)exitwith{systemChat  "You Don't Have Enough Money To Create This Gang!"};

[player,"geld",-gangcreatecost] call storage_add;

call compile format['gangsarray = gangsarray + [["%1", ["%2"], true]];', _text, _name];
publicVariable "gangsarray";
systemChat  format["You Have Created %1!", _text];

};

if(_art == "join") then

{

_gang = _this select 1;
_name = name player;
_id   = -1;

if(gangmember)exitwith{systemChat  "You Are Already In A Gang!"};

for "_c" from 0 to (count gangsarray - 1) do {if (((gangsarray select _c) select 0) == _gang) exitWith {_id = _c;};};

if(_id == -1)exitwith{systemChat  "This Gang No Longer Exists!"};

_gangarray = gangsarray select _id;
_members   = _gangarray select 1;
_canjoin   = _gangarray select 2;

_count = count (_members);

if (_count >= 8) exitwith {systemChat  "Only 8 people are allowed in a gang";};

if(!_canjoin)exitwith{systemChat  "You are not able to join this gang because the leader of this gang is not currently not recruiting"};

_members   = _members + [_name];
_gangarray set[1, _members];

call compile format['gangsarray set[%1, %2];', _id, _gangarray];
publicVariable "gangsarray";

systemChat  format["you have joined %1!", _gang];

};

if(_art == "leave") then

{

if(!gangmember)exitwith{systemChat  "you are not in a gang!"};

for "_c" from 0 to (count gangsarray - 1) do 

	{

	_gangarray = gangsarray select _c;
	_gang	   = _gangarray select 0;
	_members   = _gangarray select 1;
	_name	   = name player;
		
	if(_name in _members)then

		{

		_members = _members - [_name];
		_gangarray set[1, _members];
		call compile format['gangsarray set[%1, %2];', _c, _gangarray];
		publicVariable "gangsarray";
		systemChat  "you left your gang!";
		gangmember=false;

		};

	};

};

if(_art == "kick") then

{


_civ = call compile format["%1", _this select 1];

if(player == _civ)exitwith{systemChat  "you can't kick yourself, silly!"};

for "_c" from 0 to (count gangsarray - 1) do 

	{

	_gangarray = gangsarray select _c;
	_gang	   = _gangarray select 0;
	_members   = _gangarray select 1;
	_name	   = name player;
		
	if(_name in _members)then

		{

		_members = _members - [(name _civ)];
		_gangarray set[1, _members];
		call compile format ['gangsarray set[%1, %2]', _c, _gangarray, _civ];
		publicVariable "gangsarray";
		format['if(player == %3)then{systemChat  "You have been kicked out of your gang!"; gangmember = false;}; gangsarray set[%1, %2]', _c, _gangarray, _civ] call network_broadcast;

		};

	systemChat  format["you kicked %1 from your gang!", name _civ];
	
	};

};

if(_art == "allowjoin") then

{

if(_this select 1 == "")exitwith{systemChat  "you must select either yes or no!"};

_bool = call compile format["%1", _this select 1];

for "_c" from 0 to (count gangsarray - 1) do 

	{

	_gangarray = gangsarray select _c;
	_gang	   = _gangarray select 0;
	_members   = _gangarray select 1;
	_name	   = name player;
		
	if(_name in _members)then

		{

		_gangarray set[2, _bool];
		call compile format['gangsarray set[%1, %2];', _c, _gangarray];
		publicVariable "gangsarray";
		if(_bool)then{systemChat  "civilians can now join your gang"}else{systemChat  "civilians can no longer join your gang"};

		};

	};

};

if(_art == "clientloop") then

{

sleep 10;

private ["_mygang", "_mymembers", "_enmembers"];

startgroup = group player;

for "_c" from 0 to (count gangsarray - 1) do 

	{

	_gangarray = gangsarray select _c;
	_gang	   = _gangarray select 0;
	_members   = _gangarray select 1;
	_name	   = name player;
		
	if(_name in _members and iscop)then

		{

		_members = _members - [_name];
		_gangarray set[1, _members];
		call compile format['gangsarray set[%1, %2]', _c, _gangarray];
		publicVariable "gangsarray";
		};

	};

while {isciv} do

	{

	for "_c" from 0 to (count gangsarray - 1) do 

		{

		_gangarray = gangsarray select _c;
		_gang	   = _gangarray select 0;
		_members   = _gangarray select 1;
		
		if(count _members > 0) then

			{

			_leader    = _members select 0;
			_lunit	   = _leader call core_nametoplayer;
			if(isnull _lunit and !(player in (units startgroup)))then{[player] joinsilent startgroup};
			if(isnull _lunit)exitwith{};
			_group	   = group _lunit;
			_name      = name player;

			if(leader _group != _lunit)then{_group selectleader _lunit};
			if(player == _lunit and !gangleader)then{gangleader = true; [player] joinsilent startgroup;};
			if(gangleader and player != _lunit and _name in _members)then{gangleader = false};
			if(_name in _members and !gangmember)then{gangmember = true};
			if(_name in _members and gangmember)then{_mygang = _gang; _mymembers = _members};
			
			};

		};

	
	for "_c" from 0 to (count gangareas - 1) do 
	{

		_gangarea = gangareas select _c;
		_control  = _gangarea getvariable "control";
		
		if(IsNil "_control")exitWith
		{
			
		};

		if(player distance _gangarea < 10 and (getpos _gangarea select 2) < 0 and _control == (call INV_mygang)) then
		{
			_gangarea setpos [getpos _gangarea select 0, getpos _gangarea select 1, (getpos _gangarea select 2) + 0.1];
		};
	};

	sleep 1;

	};

};

if(_art == "serverloop") then

{

_counter = 0;
	for "_c" from 0 to (count gangsarray - 1) do 

	{
		_gangarray = gangsarray select _c;
		_members   = _gangarray select 1;
		
		if(_counter >= gangdeltime and count _members == 0)exitwith
		{
		call compile format['gangsarray set[%1, 0]; gangsarray = gangsarray - [0];', _c];
		publicVariable "gangsarray";
		};

		_lname	   = _members select 0;
			
		if(isnull (_lname call core_nametoplayer))then

			{

			_members = _members - [_lname];
			_gangarray set[1, _members];
			call compile format['gangsarray set[%1, %2]', _c, _gangarray];
			publicVariable "gangsarray";

			};

		};

	if(_counter >= gangdeltime)then{_counter = 0};

	_counter = _counter + 60;
	ar_gangs_rt = (time + 60);
};