	private ["_selection","_item","_price","_class","_model"];
	_selection = _this select 0;
	if(isNil "_selection")exitWith{hint "You need to select an item first"};
	AM_temp_carrying = true;
	_item = AM_classnames_total select _selection;
	_price = _item select 1;
	_class = _item select 0;
	temp_altitude = _item select 2;

	_price = _price * AM_classnames_priceincrease;
	_model = _class call INV_GetItemClassname;
	
	temp_item = _model createVehicle position player;
	temp_item setVariable ["AM_CP",1,true];
	temp_item attachto[player,[0,2,temp_altitude]];
	
	if ([player,_class] call storage_amount > 0)then 
	{
	[player,_class,-1] call storage_add;
	}
	else
	{
	kontostand = kontostand - _price;
	};
	systemChat  "You have been charged for buying this. Press 9 to drop it on the ground.";
	
	closeDialog 0;