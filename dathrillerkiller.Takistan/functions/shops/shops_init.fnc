private ["_data","_img","_text"];

{
	_data = _x select 1;
	_img = _data select 0;
	_img = if (_img != "")then {format ["sfg_textures\tags\%1",_img]}else{""};
	_text = _data select 1;

	[(_x select 0),_text,_img]call tag_add;
}forEach INV_ItemShops;