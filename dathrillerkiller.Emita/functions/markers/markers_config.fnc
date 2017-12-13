private ["_return"];
_return = switch(ar_side)do
	{
		case "PD": {[playerstringarray,"ColorBlue"]};
		case "EMS":{[playerstringarray,"ColorGreen"]};
		case "CIV": { [[str player],"ColorWhite"] };
	};
	
_return