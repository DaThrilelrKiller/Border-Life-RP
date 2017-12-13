private ["_time","_nibbles"];

[] spawn fishing_cought;

_time = [5,25]call core_random;
_nibbles = 100;
sleep _time;

while {v_fishing} do {

	_sleep = round (random 5) + 0.5;
	sleep _sleep;

	
	if ([30]call Main_Random && {_nibbles < 0})then {
		titletext ["A fish grabed the hook...", "PLAIN DOWN", 1];
		v_fish_onhook = _this select 1;
		_sleep = (random 2) + 0.9;	
	}else{
		v_fish_onhook = "";
		titletext ["Nibble...", "PLAIN DOWN", 1];
		_sleep = (random 5);
		_nibbles = if (_nibbles == 100)then { round (random 3)}else{_nibbles - 1};
	};
	sleep _sleep;	
};