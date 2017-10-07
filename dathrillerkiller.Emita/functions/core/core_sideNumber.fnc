private ["_side"];

_side = _this select 0;


switch (_side) do {
	case west: {
		playersNumber west;
	};
	case east: {
		playersNumber east;
	};
	case civilian: {
		playersNumber civilian;
	};
	case resistance: {
		playersNumber resistance;
	};
	default {
		[playersNumber west,playersNumber east,playersNumber civilian,playersNumber resistance]
	};
};




playersNumber west