private ["_test","_return"];

_test = (nearestLocations [position player, ["Name","NameVillage","NameCityCapital","NameLocal","RockArea"], 320])select 0;
if (!isNil "_test") then {
	_test =  ([str _test," "] call DTK_splitString)select 1;
	_return = (text nearestLocation [position player,_test]);
}else{
	_return = "";
};

_return