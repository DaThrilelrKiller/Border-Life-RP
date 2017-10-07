private ["_vehcile","_lightbar"];

_vehcile = vehicle player;

if (_vehcile != player)then {
	_lightbar =  _vehcile getVariable "lightbar";
	if (!isNil "_lightbar")then {
		if (_lightbar animationPhase "ani_siren" > 0)then {
		_lightbar animate ["ani_siren",0];
		}
		else{
		_lightbar animate ["ani_siren",1];
		};

	};
};