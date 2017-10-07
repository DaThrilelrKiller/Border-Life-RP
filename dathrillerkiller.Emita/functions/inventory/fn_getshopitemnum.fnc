
private ["_c", "_Fshopitemnum","_item","_shopinv"];
_Fshopitemnum = [];
_item = _this select 0;
_shopinv = _this select 1;

if ((typeName _item) == "STRING") then 

	{

	for [{_c=0}, {_c < (count _shopinv)}, {_c=_c+1}] do 

		{

		if ((_shopinv select _c) == _item) then 

			{

			_Fshopitemnum = _c;
			
			};
			
		};
	
	};
	
_Fshopitemnum;
