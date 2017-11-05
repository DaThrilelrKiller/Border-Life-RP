_civmenuciv  = civmenuciv;
_civmenu_civ = civmenu_civ;

_art         = _this select 0;
_geld        = [player,"geld"] call storage_amount;

if ((player distance _civmenuciv >= 25) or (!(alive _civmenuciv))) exitWith 

{

systemChat  format[localize "STRS_civmenu_distance"];

};

if (_art == 5) exitWith 

{

(format ["if (AR_playerString == ""%1"") then {[""licheck"", ""%2""] execVM ""scripts\civmenu.sqf"";}", _civmenu_civ, AR_playerString]) call network_broadcast;

};

if ((count (weapons player)) == 0) exitWith 

{	

systemChat  localize "STRS_civmenu_copnotarmed";

};

if (_art == 6) exitWith 

{

if(!(_civmenuciv call ISSE_IsVictim))exitwith{hint localize "STRS_inventory_checknohands"};		

(format ["if (AR_playerString == ""%1"") then {[""inventcheck"", ""%2""] execVM ""scripts\civmenu.sqf"";}", _civmenu_civ, AR_playerString]) call network_broadcast;

};

if (_art == 20) exitWith 

{

if(!(_civmenuciv call ISSE_IsVictim))exitwith{hint localize "STRS_inventory_checknohands"};

(format ["if (AR_playerString == ""%1"") then {[]call INV_DropAll;};", _civmenu_civ, AR_playerString]) call network_broadcast;

};

if (_art == 1) exitWith 
{
	drugsvalue = 0;
	_remove = [_civmenuciv,"drug"]call storage_RemoveKind;
	
	if ((_remove select 0) > 0)then
	{
		drugsvalue = (_remove select 1);
		["ALL",[_civmenuciv,drugsvalue],{titletext [format[localize "STRS_civmenucheck_haddrugs", (_this select 0), (_this select 1)], "plain"];},false,false]call network_MPExec;
		systemChat  format[localize "STRS_civmenu_hasdrugs", _civmenuciv,  ceil(drugsvalue/25000), (drugsvalue/2)];
		[_civmenuciv,"Trafficking Drugs",drugsvalue]call cdb_addWarrant;
	}
	else
	{
	systemchat localize "STRS_civmenu_hasnodrugs";
	};
};

if (_art == 2) exitWith 

{

if(!(_civmenuciv call ISSE_IsVictim))exitwith{hint localize "STRS_inventory_checknohands"};

(format ["if (player == %1) then {[""disarm""] execVM ""scripts\civmenu.sqf"";};", _civmenuciv]) call network_broadcast;

systemChat  format [localize "STRS_civmenu_disarm", _civmenu_civ];

};

if ((_art == 3) and (player distance prisonflag <= 70)) exitWith 

{

_dauer = round(_this select 1);
format ["if (player == %1) then {[""arrest"", %2, %3] execVM ""scripts\civmenu.sqf"";};", _civmenu_civ, _dauer, player] call network_broadcast;

systemChat  format[localize "STRS_civmenu_arrested", _civmenu_civ];

};

if (_art == 4) exitWith 

{	

_strafe = _this select 1;
if (!(_strafe call string_isInteger)) exitWith {systemChat  localize "STRS_inv_no_valid_number";};
_strafe = _strafe call string_toInt;  if (_strafe <= 0) exitWith {};
(format ["if (player == %1) then {[""ticket"", %2, %3] execVM ""scripts\civmenu.sqf"";}; systemChat format[localize ""STRS_civmenu_ticket_globalchat"", name %1, %2, name %3];", _civmenuciv, (_strafe call string_intToString), player]) call network_broadcast;

};
if ((_art == 7) and (player distance maxFlag <= 40)) exitWith 

{

_dauer = round(_this select 1);
format ["if (player == %1) then {[""arrestMax"", %2, %3] execVM ""scripts\civmenu.sqf"";};", _civmenu_civ, _dauer, player] call network_broadcast;

systemChat  format[localize "STRS_civmenu_arrested", _civmenu_civ];

};
if (_art == 8) exitWith 

{	
_check = call (compile format ["%1_warning", _civmenuciv]);
if (count _check <= 1) exitwith {hint "Not Warned";};
if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};

	_trennlinie = "---------------------------------------------";
	lbAdd [1, _trennlinie];
		
	private "_k"; 
	lbAdd [1, "C U R R E N T  W A R N I N G S:"];
	lbAdd [1, _trennlinie];
	for [{_k=0}, {_k < (count _check)}, {_k=_k+1}] do 
	{
	
	_civ	  = _check select _k;
	
	
			lbAdd [1, (format ["%1", _civ])];
			_str = "";
			{if(_str == "")then{_str = _str + _x}else{_str = _str + ", "; _str = _str + _x;};} count _reason;
			lbAdd [1, _trennlinie];
			

		

	};

};


