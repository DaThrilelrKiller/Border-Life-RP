private ["_item","_amount","_max"];

_item   = _this select 1;
_amount = _this select 2;
_max =   [player,_item] call storage_amount;

if( _amount >  _max) then { _amount =  _max;};

_hunger = switch _item do 
	{	
		case "D5W":  		{5};
		case "blowfish": 	{8};
		case "perch":  		{6};
		case "walleye":  	{7};
		case "trout":  		{7};
		case "mackerel":  	{8};
		case "herring":  	{8};
		case "bass":  		{8};
		case "straw":  		{3};
		case "Donut":     	{10};
		case "cl_donut":    {10};
		case "Bread":     	{5};
		case "boar":     	{10};
		case "rabbit":     	{10};
		case "strangemeat": {15};
		case "bread":     	{5};
		case "apple":    	{7};
		case "Stoer":    	{75};
		case "coconut":     {10};
		case "banana":     	{7};
		case "getreide":    {2};
		case "hgbar":     	{4};
		case "tcgmp":    	{5};
		case "doshd":    	{5};
		case "gdar":     	{5};
		case "bjerk":     	{5};
		case "Frozens":     {4};
		case "wulf":     	{6};
		case "fuzz":     	{4};
		case "inby":     	{4};
		case "cookie":     {["SERVER",player,"S_dtk_GetFortune",false,false]call network_MPExec; 4};
		default {0};
	};




[player,_item,-_amount] call storage_add;

dtk_hunger = dtk_hunger - (_hunger*_amount);
if (dtk_hunger < 0) then {dtk_hunger = 0};

systemChat  format[localize "STRS_inv_item_nahrung_gegessen", ((round (100-dtk_hunger)) call string_intToString)];