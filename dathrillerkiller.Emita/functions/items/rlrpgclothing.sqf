private ["_swag"];
_swag = _this select 1;
[_swag] call Other_clothes;

player sideChat format["You have changed into a %1",typeof vehicle player];
systemChat  "Damn you are looking sexy";
systemChat  "Show it off to all your friends";
sleep 1;
[player,_swag,-1] call storage_add;