private ["_shoparray","_shop","_buylist","_selllist","_con"];
if (!(createDialog "itemkaufdialog")) exitWith {hint "Dialog Error!"};

dtk_activeShopNumber    = (_this select 0); 
_shoparray = (INV_ItemShops select dtk_activeShopNumber);
_shop		= (_shoparray select 0); 
_buylist   = (_shoparray select 4); 
shop_selllist  = (_shoparray select 5);
_con =  (_shoparray select 7);

if !(_con call shops_canuseshop)exitWith {systemChat "you are not allowed to use this shop"; closeDialog 0;};

_buylist call shops_buylist;
shop_selllist call Shops_selllist;
[]spawn Shops_refresh;

buttonSetAction [103, "call shops_Sell;"];
buttonSetAction [3,  "call shops_Purchase;"];


