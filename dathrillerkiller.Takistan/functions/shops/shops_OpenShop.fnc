private ["_shoparray","_shop","_con"];

v_alt = false;
v_ctrl = false;
v_shift = false;

dtk_activeShopNumber    = (_this select 0); 
_shoparray = (INV_ItemShops select dtk_activeShopNumber);
_shop		= (_shoparray select 0); 
shop_buylist   = (_shoparray select 4); 
shop_selllist  = (_shoparray select 5);
_con =  (_shoparray select 7);

if !(_con call shops_canuseshop)exitWith {systemChat "you are not allowed to use this shop";};

createDialog "shopping";

call shops_types;
lbAdd [2100,"Shop"];
lbAdd [2100,"Inventoy"];
lbSetCurSel [2100,0];
