private ["_warrants","_license","_notes"];

lbClear 2;
lbClear 3;
lbClear 4;

cdb_object = [call compile(CtrlText 1),(CtrlText 1)call plates_plateToVehicle]select (isNil format ["%1",CtrlText 1]);

if (isNil "cdb_object" or {isNull cdb_object})exitWith {systemchat "Nothing Found in Database";};
systemchat format ["Searching Database For: %1",cdb_object call cdb_name];
if !(isPlayer cdb_object)then{
systemchat format ["Vehicle Is Registered To: %1",((cdb_object getVariable "DTK_OwnerUID") select 3)];
};

_warrants = cdb_object getVariable ["cdb_warrants",[]];
_license = cdb_object getVariable ["cdb_license",[]];
_notes = cdb_object getVariable ["cdb_notes",[]];

if (count _warrants > 0)then
{
	{
		_index = lbadd [2, format['Active Warrant: %1',_x]];
		lbSetColor [2,_index,[0.23,0.34,0.98, 1]];
	}count _warrants;
}else{
	_index = lbadd [2, 'No active warrants found'];
	lbSetColor [2,_index,[0.23,0.34,0.98, 1]];
};

if (count _license > 0)then
{
	{
		_index = lbAdd [3,format["License: %1",_x call licenses_name]];
		lbSetColor [3,_index,[0.23,0.34,0.98, 1]];
	}count _license;
}
else
{
	_index = lbadd [3, 'No License Found'];
	lbSetColor [3,_index,[0.23,0.34,0.98, 1]];
};

if (count _notes > 0)then
{
	{
		_index = lbAdd [4,format['Note: %1 - By %2', (_x select 0),(_x select 1)]];
		lbSetColor [4,_index,[0.23,0.34,0.98, 1]];
	}count _notes;
}
else
{
	_index = lbadd [4, 'No Notes Found'];
	lbSetColor [4,_index,[0.23,0.34,0.98, 1]];
};