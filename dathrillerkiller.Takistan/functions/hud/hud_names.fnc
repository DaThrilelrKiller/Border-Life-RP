private ["_objects","_object","_text"];

if ([player,10] call statsave_nearSave)then {
		_text = ["Retrive Vehicle (E)","Save Vehicle (E)"]select (vehicle player != player);
		titleRsc["Rtags", "PLAIN"];
		_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
		_control ctrlSetText _text;
};

if (vehicle player != player)exitwith{

	if (driver(vehicle player) == player)then {
		if (call garage_near)then {
			titleRsc["Rtags", "PLAIN"];
			_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
			_control ctrlSetText "Open Garage (E)";
		};
	};
};

_objects = ["Man", "RUSpecialWeaponsBox","DTK_InfoStand","tcg_ATM","LandVehicle", "Air", "ship", "LocalBasicWeaponsBox","MAP_notebook"];
_object = nearestObjects [getPos player,_objects,2];
_object = _object - [player];
_object = _object select 0;

if (isNil "_object")exitwith{};


if ([_object,["Air", "Ship", "LandVehicle"]]call core_isKindOf && {alive _object} && {!locked _object})exitwith {
	titleRsc["Rtags", "PLAIN"];
	_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
	_control ctrlSetText "ENTER VEHIClE (E)";
};

if (typeOf _object == "LocalBasicWeaponsBox")exitwith {
	titleRsc["Rtags", "PLAIN"];
	_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
	_control ctrlSetText "OPEN STORAGE (T)";
};

if ([_object,["tcg_ATM"]]call core_isKindOf)exitwith {
	titleRsc["Rtags", "PLAIN"];
	_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
	_control ctrlSetStructuredText parseText '<t align="center"><img image="sfg_textures\hud\7.paa"/> ATM (E)</t>'; 
};

if (_object in shopusearray)exitwith {
	_data = (_object call INV_getshopArray);
	_img = _data select 1 select 0;
	_name = _data select 1 select 1;
	_condition = _data select 7;
		
	titleRsc["Rtags", "PLAIN"];
			
	_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
	
	if(iscop && {_object in drugsellarray})exitwith{
		_control ctrlSetTextColor [0, 0, 1, 0.8];
		_control ctrlSetText "Drug Search (E)";
	};
	
	if !(_condition call shops_canuseshop)then {
		_control ctrlSetTextColor [0.6,0,0,1];
	};
			
			
	if (_img != "")then 
	{
		_control ctrlSetStructuredText parseText format['<t align="center"><img image="sfg_textures\tags\%1.paa"/> %2 (E)</t>',_img,_name];
	}else{
		_control ctrlSetStructuredText parseText format['<t align="center">%1 (E)</t>',_name];
	};
	
};

if (isPlayer _object)exitwith {
	titleRsc["Rtags", "PLAIN"];
	_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
	_control ctrlSetText "PLAYER MENU (E)";
};

if (_object isKindOf "MAP_notebook")exitwith {
	titleRsc["Rtags", "PLAIN"];
	_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
	_control ctrlSetText "OPEN CCTV (E)";
};
