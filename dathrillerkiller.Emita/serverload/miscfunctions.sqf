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

