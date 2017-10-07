private ["_return"];
_return = switch(ar_side)do
	{
		case "PD": {[playerstringarray,"ColorBlue"]};
		case "EMS":{[playerstringarray,"ColorGreen"]};
		case "CIV": { [["player"],"ColorWhite"] };
	};
	
_return