private ["_return","_vehicle"];
_vehicle = _this;

_return = switch(true)do
{
	case (_vehicle isKindOf "HMMWV_DES_EP1"):{[-0.02,0.51,-1.56]};
	case (_vehicle isKindOf "SUV_PMC_BAF"):{ [0,-0.25,-0.59]};
	case (_vehicle isKindOf "cl_ram_3500_black"):{ [0,0.01,1.42]};
	case (_vehicle isKindOf "dtk_f350"):{ [0,0.33,0.25]};
	case (_vehicle isKindOf "f350_black"):{ [0,-2.45,0.06]};
	case (_vehicle isKindOf "transit_black"):{ [0,0.68,0.79]};
	case (_vehicle isKindOf "sierra_black"):{ [0,0.26,-0.11]};
	case (_vehicle isKindOf "h1_black"):{ [0,-0.58,1.08]};
};
	
_return