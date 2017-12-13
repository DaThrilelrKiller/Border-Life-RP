_loopart = _this select 0;
_geld    = 'geld' call INV_GetItemAmount;

if (_loopart == "disarm") then 

{
		
call INV_EntferneIllegales;		
systemChat  localize "STRS_civmenucheck_beendisarmed";				

};


if (_loopart == "ticket") then 

{

_strafe = _this select 1;					
_cop    = _this select 2;		
_didpay = 0;
_copplayernumber = playersNumber west;
_copticket = round(_strafe/_copplayernumber);	
																
if (!(createDialog "ja_nein")) exitWith {hint "Dialog Error!"};

ctrlSetText [1, format["%1 Gave You A Ticket Of $%2. Do You Want To Pay It?", _cop, (_strafe call string_intToString)]];	

waitUntil{(not(ctrlVisible 1023))};																					

if (Antwort == 1) then

	{

	if ((_geld + kontostand) < _strafe) exitwith 

		{

		(format ["systemChat format [localize ""STRS_civmenu_didnotpayticket"", name %2, %3];", _cop, player, (_strafe call string_intToString), (_didnotpay call string_intToString)]) call network_broadcast;

		}; 
		
	systemChat  format [localize "STRS_civmenucheck_ticketself", (_strafe call string_intToString)];
	(format ["systemChat format [localize ""STRS_civmenu_didpayticket"", name %2, %3];if (iscop) then{systemChat  ""You got $%4 because the %2 paid the ticket."";[""geld"", %4] call INV_AddInvItem;};_boun = (%2 getvariable 'cdb_bounty'); _boun = _boun - %3; if(_boun < 0)then{_boun = 0};
	player setVariable ['cdb_bounty',_boun,true]; ", _cop, player, (_strafe call string_intToString), (_copticket call string_intToString)]) call network_broadcast;


	if(_geld > _strafe) exitwith {['geld', -(_strafe)] call INV_AddInvItem;};	
	if (kontostand > _strafe) exitwith {kontostand = kontostand - _strafe;};
												
	if ((_geld + kontostand) > _strafe) exitwith

		{

		_strafe1 = _geld;
		_strafe2 = _strafe - _strafe1;
		['geld', -(_strafe1)] call INV_AddInvItem;
		kontostand = kontostand - _strafe2;
 
		};

	};

if (Antwort == 2) then

	{																	

	(format ["systemChat format [localize ""STRS_civmenu_didpaynothing"", name %2];", _cop, player, (_strafe call string_intToString)]) call network_broadcast;
	systemChat  localize "STRS_civmenu_youdidnotpay";	

	};

};
			

if ((_loopart == "arrest") and (player distance prisonflag <= 70))  then 

{

_prisondauer = (_this select 1)*60; 													
_copobj      = _this select 2;															
_exitart     = "";

if (!(player call ISSE_IsVictim)) exitwith {(format ["if (AR_playerString == ""%1"") then {systemChat  localize ""STRS_inventory_checknohands""};", _copobj]) call network_broadcast;}; 

_civkopfgeld = (player getvariable "cdb_bounty");

if (_civkopfgeld != 0) then 

	{

	(format['if(AR_playerString == "%1")then{kontostand = kontostand + %2; systemChat  "This civ had a bounty of $%2! You got that bounty!"}', _copobj, _civkopfgeld]) call network_broadcast;

	};

(format ["systemChat format [localize ""STRS_civmenucheck_arrested_global"", name %1, name %3, %2]; %1 setVariable ['cdb_bounty',(%2*10000),true];%1_arrest = 1;", player, ((_prisondauer/60) call string_intToString), _copobj]) call network_broadcast;																	

player setpos getmarkerpos "prisonspawn"; player setpos [getpos this select 0, getpos this select 1, (getpos this select 2)+.9];
ar_typeofplayer = typeOf player;
["sfg_prisonor"] call clothing_switch;
dtk_disabledkeys = [44,47];


(format ["%1 switchmove ""%2"";", player, "normal"]) call network_broadcast;
call INV_EntferneIllegales;	
local_arrest    = 1;		
dtk_hunger      = 0;					
CivTimeInPrison = (_this select 1);
systemChat  format [localize "STRS_civmenucheck_arrested_self", (CivTimeInPrison call string_intToString)];
stolencash = 0;
player setdamage 0;

_counter = 0;
_tBounty = (_prisondauer/60)*10000;

while {true} do 

	{
		
	_freigelassen = call compile format ["%1_arrest", player]; 
	_bounty       = (player getvariable "cdb_bounty");
	_frac 	      = _bounty/_tBounty;
	_timetotake   = round(_prisondauer*_frac);
	_testka = (player getvariable "cdb_bounty");
	_testka = _testka - (10000/60);
	player setVariable ['cdb_bounty',_testka,true]; 

	hintsilent format["Time until release: %1 seconds\nBail left to pay: $%2", _timetotake, round(_bounty)];

	if (isNull(player))                      exitWith {_exitart = ""};								
	if (!(alive player))                     exitWith {_exitart = "tot"};																												
	if (_counter >= _prisondauer)             exitWith {_exitart = "frei"};														
	if (_freigelassen == 0)                   exitWith {_exitart = "freigelassen"};																
	if (player Distance prison_logic >= 50) exitWith {_exitart = "ausbruch"};
	if (_bounty <= 0)			  exitwith {_exitart = "freigelassen"};

	_counter = _counter + 1;
	sleep 1;												

	};	
																									
if ((_exitart == "frei") or (_exitart == "freigelassen")) then 

	{

	player setPos getMarkerPos "jail_freemarker";	player setdamage 0;	
	(format ["if (player == %1) then {local_arrest = 0; systemChat  localize ""STRS_civmenucheck_free_self"";}; systemChat format [localize ""STRS_civmenucheck_free_global"", name %1];", player]) call network_broadcast;
	player call cdb_clear_warrants;
	[ar_typeofplayer] call clothing_switch;
	dtk_disabledkeys = [];
	};

if (_exitart == "ausbruch") then 

	{

	(format ["if (player == %1) then {local_arrest = 0;}; %1_arrest = 0; systemChat format [localize ""STRS_civmenucheck_breakout"", name %1];", player]) call network_broadcast;								
	[player,"escaping from jail",20000]call cdb_addWarrant;
	dtk_disabledkeys = [];
	};

};

if (_loopart == "stealmoney") then 

{

_aktionsStarter = _this select 1; 
if(stolenfromtimeractive) exitwith 
{
	(format ['if (AR_playerString == "%1") then {hint "%2 has been stolen from recently";};', _aktionsStarter, player]) call network_broadcast;	
};
_geld  = 'geld' call INV_GetItemAmount;
_amounttosteal = (floor(random _geld));
["geld", -(_amounttosteal)] call INV_AddInvItem;

(format ['if (AR_playerString == "%1") then {["geld", %2] call INV_AddInvItem;};hint "%1 stole %2 from %3";',_aktionsStarter, _amounttosteal, player]) call network_broadcast;
stolenfromtimeractive = true;
sleep 900;
stolenfromtimeractive = false;

};

