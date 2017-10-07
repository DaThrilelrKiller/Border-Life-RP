private ["_MenuItems","_return"];

_MenuItems = switch (true) do 
 {
	case (SwagDevs): 
	{
	_return = 
	[
	"         SFG Developer Menu",
	 "================================",
	"Delete",
	"Teleport",
	"Heal/Repair (3m)",
	"GPS,NVG,BINOC",
	"World Heal",
	"Global Comp. 100k",
	"Masterkey",
	"Add All Licenses",
	"Set Time To 12 PM",
	"Set Time To 11 PM",
	"Console",
	"Triger Fire Mission",
	"Triger Gas Leak",
	"Triger Building Collapes",
	"Dev Tool (Reset Pos Array)",
	"Dev Tool (Add Pos)",
	"Dev Tool (Save Pos Array)"
	];
	_return
	};

	case (adminlevel2): 
	{
	_return = 
	[
	 "   SFG Owner/Head Admin Menu",
	 "================================",
	 "Delete",
	 "Spectate (F3 to Quit)",
	 "Teleport",
	 "Heal/Repair (3m)",
	 "GPS,NVG,BINOC",
	 "Global Comp. 100k"
	];
	_return
	};

	case (adminlevel3): 
	{
	_return =
	[
	 "       SFG Administrator Menu",
	 "================================",
	 "Delete",
	 "Teleport",
	 "Heal/Repair (3m)"
	];
	_return
	};

	case (adminlevel4): 
	{
	_return = 
	[
	"       SFG Moderator Menu",
	"================================",
	"Delete",
	"Spectate (F3 to Quit)"
	];
	_return
	};
};

{
lbAdd [1000, _x];
true
}count _MenuItems;