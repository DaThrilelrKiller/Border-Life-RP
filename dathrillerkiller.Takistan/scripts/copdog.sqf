_art  = ((_this select 3) select 0);
_geld = [player,"geld"] call storage_amount;

if (_geld <= dog_cost)    exitWith {systemChat  "You dont have enough money";};
[player,"geld",-dog_cost] call storage_add;

systemChat  format["%1 bought a dog for %2", player, (dog_cost call string_intToString)];																						



	If (iscop) Then
	{
		private "_type";
		If (!(isNil {player getVariable "CLAY_DogType"})) Then
		{
			_type = player getVariable "CLAY_DogType";
		}
		Else
		{
			_type = "CLAY_Dog";
		};

		_grp = group player;
		_name = format ["CLAY_tmpDog%1", round (random 1000)];
		call compile format ["_type createUnit [[(getPos player select 0) + (1 * sin (getDir player)), (getPos player select 1) + (0.3 * cos (getDir player)), 0], _grp, '%1 = this']", _name];
		_dog = call compile format ["%1", _name];
		_dog setDir getDir player;
		
		player setVariable ["CLAY_DogUnit", _dog];
		player setVariable ["CLAY_DogStatus", "Waiting"];
	};