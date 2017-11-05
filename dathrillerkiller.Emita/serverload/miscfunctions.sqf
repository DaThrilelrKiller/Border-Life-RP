reveal =

{

_objs = nearestobjects[getpos player, ["man", "allvehicles"], 300];

{_x reveal _this;_x dotarget _this;} count _objs;

};

isprone = 

{

if(
animationstate player == "amovppnemrunsnonwnondf" or 
animationstate player == "amovppnemstpsnonwnondnon" or 
animationstate player == "amovppnemstpsraswrfldnon" or 
animationstate player == "amovppnemsprslowwrfldf" 
) then {true}else{false};

};

TurnMayorFunc = 

{

PG_mayor = call compile _this;
publicVariable "PG_mayor";

};

DialogSpielerListe = {
private ["_Fart", "_Fid", "_Fname", "_Fingame", "_Findex", "_Flistlen", "_Feigenenum"];
    _Fart = _this select 0;
   _Fid = _this select 1;
_Fname = _this select 2;
_Fingame = _this select 3;
   _Findex = 0;
_Flistlen = 0;
   _Feigenenum = -1;
  for [{
_c=0}, {
_c < (count playerstringarray)}, {
_c=_c+1}] do {
   _Fspieler = playerstringarray select _c;
   if ( ((_Fart == 0) or ((_Fart == 1) and (_c > civscount)) or ((_Fart == 2) and (_c < civscount))) and ((_Fingame) or (_Fspieler call ISSE_UnitExists)) ) then 
 {
    if (_Fname) then 
 {
    _Findex = lbAdd [_Fid, format ["%1 - (%2)", _Fspieler, name (call compile _Fspieler)]];
   } else {
    _Findex = lbAdd [_Fid, _Fspieler];
};

   lbSetData [_Fid, _Findex, format["%1", _c]];
    if (_Fspieler == rolestring) then 
 {
_Feigenenum = _Flistlen;
};

  _Flistlen = _Flistlen + 1;
};

  };

[_Flistlen, _Feigenenum]};

Emita_GetGridRef =
{
	private ["_Pos","_X","_Y","_sY","_sX","_Result"];
	_Pos = _this select 0;
	_X = floor ((getPos _Pos select 0) / 100);
	_Y = floor ((getPos _Pos select 1) / 100);
	_Y = 50 - _Y;
	_sX = str(_X);
	_sY = str(_Y);
	switch (true) do
	{
		case ((_X < 10) && (_Y < 10)):
		{
			_Result = "00"+_sX+"00"+_sY;
		};
		case ((_X < 10) && (_Y > 10)):
		{
			_Result = "00"+_sX+"0"+_sY;
		};
		case ((_Y < 10) && (_X > 10)):
		{
			_Result = "0"+_sX+"00"+_sY;
		};
		default
		{
			_Result = "0"+_sX+"0"+_sY;
		};
	};
	_Result;
};

INV_heal = 

{

if(_this == player)then

	{

	["ALL",[_this,"AinvPknlMstpSlayWrflDnon_medic"],"network_SwitchMove",false,true]call network_MPExec;
	systemChat  format[localize "STRS_inv_items_medikit_benutzung"];	
	sleep 5;
	player setdamage 0; 
	systemChat  format[localize "STRS_inv_items_medikit_fertig"];

	true;

	}else{

	["ALL",[_this,"AinvPknlMstpSlayWrflDnon_medic"],"network_SwitchMove",false,true]call network_MPExec;
	systemChat  "Healing civ...";
	sleep 5;
	_this setdamage 0;
	
	true;

	};

};			

INV_getitemScriptName = { ((_this call INV_getitemArray) select 0);};
INV_getitemType = {((_this call INV_getitemArray) select 1) select 0;};
INV_getitemKindOf = { ((_this call INV_getitemArray) select 1) select 1;};
INV_getitemClassName = { ((_this call INV_getitemArray) select 2) select 0;};
INV_getitemName = {((_this call INV_getitemArray) select 2) select 1;};
INV_getitemBuyCost = {((_this call INV_getitemArray) select 3) select 0;};
INV_getitemSellCost = { ((_this call INV_getitemArray) select 3) select 1;};
INV_getitemTypeKg = { ((_this call INV_getitemArray) select 4) select 0;};
INV_getvehmaxkg = { ((_this call INV_getitemArray) select 4) select 3;};
INV_getitemLicense = { ((_this call INV_getitemArray) select 4) select 1;};
INV_getitemLicense2 = { ((_this call INV_getitemArray) select 4) select 2;};
INV_getitemOtherStuff = { ((_this call INV_getitemArray) select 5);};
INV_getitemCostWithTax  = { ((_this call INV_getitemArray) call INV_getitemSteuer);};
INV_getitemGiveable = { ((_this call INV_getitemArray) select 5) select 0;};
INV_getitemDropable = { ((_this call INV_getitemArray) select 5) select 1;};
INV_getitemLooseable = { ((_this call INV_getitemArray) select 5) select 2;};
INV_getitemIsIllegal = { ((_this call INV_getitemArray) select 5) select 3;};
INV_getitemFilename = { ((_this call INV_getitemArray) select 5) select 4;};


TastenDruck = 
{
	private ["_ctrl", "_zeichennummer", "_ctrlid"];
	_ctrl          = ((_this select 0) select 0);
	_zeichennummer = ((_this select 0) select 1);
	_ctrlid        = (_this select 1);
	if (ISSE_str_const_validInput find _zeichennummer < 0) then
	{
		closedialog 0;
		systemChat  format[localize "STRS_wrong_input", _zeichennummer];
	};
};
ISSE_UnitExists = 
{
	private ["_obj"];
	if ((typeName _this) == "STRING") then
	{
		if ((isnil(_this)) or (_this == "scalar bool array string 0xe0ffffef") or (_this == "<NULL-Object>") or (_this == "Error: No vehicle")) then
		{
			false
		}
		else
		{
			_obj = call compile format ["%1", _this];
			if (format ["%1", isplayer _obj] == "true") then
			{
				true
			}
			else
			{
				false
			};
		};
	}
	else
	{
		if (isNull _this) then
		{
			false
		}
		else
		{
			true
		};
	};
};


ISSE_ArrayNumberNear = 
{
	private ["_c", "_obj", "_arr", "_dis", "_res"];
	_obj = _this select 0;
	_arr = _this select 1;
	_dis = _this select 2;
	_res = 0;
	if (isNull _obj) then 
	{	
		_res = 0;
	}
	else
	{
		for "_c" from 0 to (count _arr - 1) do {
		
			if (not(isNull(_arr select _c))) then
			{
				if ((_obj distance (_arr select _c)) < _dis) then
				{
					_res = _res + 1;
				};
			};
		};
	};
	_res
};

ISSE_CreateMarkerArray =
{	
	private ["_name", "_text", "_color", "_shape", "_pos", "_typ", "_marker", "_size"];
	_pos = [0,0];
	if ((typeName (_this select 0)) == "OBJECT") then
	{
		_pos = [((getPos (_this select 0)) select 0), ((getPos (_this select 0)) select 1)];
	};
	if ((typeName (_this select 0)) == "ARRAY") then
	{
		_pos = [((_this select 0) select 0), ((_this select 0) select 1)];
	};		
	_text  = "";  
	if (count _this > 1) then {_text  = _this select 1};			
	_typ   = "Destroy";      
	if (count _this > 2) then {_typ   = _this select 2};
	_color = "ColorRed";
	if (count _this > 3) then {_color = _this select 3};
	_shape = "ICON";
	if (count _this > 4) then {_shape = _this select 4};
	_size  = [1, 1];
	if (count _this > 5) then {_size  = _this select 5};
	
	if (isNil("GespawnteMarkerCounter")) then {GespawnteMarkerCounter = 0;};
	_name = format["SpawnedMarker_%1", GespawnteMarkerCounter];
	if (count _this > 6) then {_name  = _this select 6};
	_marker = createMarkerLocal [_name, _pos];
	_marker setMarkerShapeLocal _shape;
	_marker setMarkerTypeLocal  _typ;
	_marker setMarkerColorLocal _color;
	_marker setMarkerTextLocal  _text;
	_marker setMarkerSizeLocal  _size;
	GespawnteMarkerCounter = GespawnteMarkerCounter + 1;
	[_name, _marker]
};

ISSE_IsVictim =
{
	private ["_state", "_victimStats"];
	_state  = animationState _this;
	_victimStats = ["amovpercmstpssurwnondnon", "adthppnemstpsraswpstdnon_2", "adthpercmstpslowwrfldnon_4", "amovpercmwlkssurwnondf_forgoten", "civillying01", "civilsitting", "civilsitting01", "civilsitting02", "civilsitting03", "actspercmstpsnonwrfldnon_interrogate02_forgoten"];
	if (_state in _victimStats) then
	{
		true
	}
	else
	{
		false
	};
};


INV_CreateWeapon =
 
{
 
private["_class", "_menge", "_crate"];
_class = _this select 0;
_menge = _this select 1;
_crate = _this select 2;
_crate setDamage 0;
 
_crate setvehicleinit format["
this addweaponCargo [""%1"",%2];
", _class, _menge];
processInitCommands;
 
};

INV_CreateMag =
 
{
 
private["_class", "_menge", "_crate"];
_class = _this select 0;
_menge = _this select 1;
_crate = _this select 2;
 
_crate  setvehicleinit format["
this addmagazineCargo [""%1"",%2];
", _class, _menge];
processInitCommands;
 
};

