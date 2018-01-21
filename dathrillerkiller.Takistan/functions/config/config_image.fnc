private ["_item","_return"];

_item = _this select 0;

_return = _item call {
	if (_this == "schluesselbund")exitWith {"keychain.paa"};
	if (_this == "fishingpole")exitWith {"fishing-pole.paa"};
	if (_this == "cookie")exitWith {"Fortune_cookie.paa"};
	if (_this == "glass")exitWith {"glass.paa"};
	if (_this == "Gold")exitWith {"gold.paa"};
	if (_this == "hideout")exitWith {"hideout.paa"};
	if (_this == "horn_cuca")exitWith {"horn2.paa"};
	if (_this == "horn_dukes")exitWith {"horn2.paa"};
	if (_this == "horn_ita")exitWith {"horn2.paa"};
	if (_this == "horn_old")exitWith {"horn2.paa"};
	if (_this == "horn_reg")exitWith {"horn2.paa"};
	if (_this == "horn_truck")exitWith {"horn2.paa"};
	if (_this == "idcard")exitWith {"idcard.paa"};
	if (_this == "kanister")exitWith {"jerrycan.paa"};
	if (_this == "lighter")exitWith {"lighter.paa"};
	if (_this == "lockpick")exitWith {"lockpick.paa"};
	if (_this == "woodaxe")exitWith {"axe.paa"};
	if (_this == "lumber")exitWith {"lummber.paa"};
	if (_this == "medikit")exitWith {"medkit.paa"};
	if (_this == "geld")exitWith {"money.paa"};
	if (_this == "reparaturkit")exitWith {"repairkit.paa"};
	if (_this == "kleinesreparaturkit")exitWith {"repairkit.paa"};
	if (_this == "sand")exitWith {"sand.paa"};
	if (_this == "Fuelline")exitWith {"syphon.paa"};
	if (_this == "treeseed")exitWith {"tree.paa"};
	if (_this == "emptywine")exitWith {"wine.paa"};
	if (_this == "emptybeer")exitWith {"beer.paa"};
	if (_this == "emptyVodka")exitWith {"wine.paa"};
	if (_this == "emptywiskey")exitWith {"wine.paa"};
	if (_this == "OilBarrel")exitWith {"barrels.paa"};
	if (_this == "spikestrip")exitWith {"spikes.paa"};
	if (_this == "Debit_Card")exitWith {"debitcard.paa"};
	if (_this == "coal")exitWith {"coal.paa"};
	if (_this == "copper")exitWith {"copper.paa"};
	if (_this == "Diamond rock")exitWith {"diamond.paa"};
	if (_this == "Diamond")exitWith {"diamond.paa"};
	if (_this == "Diamondring")exitWith {"diamond.paa"};
	if (_this == "Diamondnecklace")exitWith {"diamond.paa"};
	if (_this == "Diamondbroach")exitWith {"diamond.paa"};
	if (_this == "Donut")exitWith {"donut.paa"};
	if (_this == "beer")exitWith {"beer.paa"};
	if (_this == "beer2")exitWith {"beer.paa"};
	if (_this == "vodka")exitWith {"wine.paa"};
	if (_this == "smirnoff")exitWith {"wine.paa"};
	if (_this == "wiskey")exitWith {"wine.paa"};
	if (_this == "wine")exitWith {"wine.paa"};
	if (_this == "wine2")exitWith {"wine.paa"};
	if (_this == "MarijuanaSeed")exitWith {"seeds.paa"};
	if (_this == "HeroinSeed")exitWith {"seeds.paa"};
	if (_this == "CocaineSeed")exitWith {"seeds.paa"};
	if (_this == "GymMem1")exitWith {"steroids.paa"};
	if (_this == "GymMem2")exitWith {"steroids.paa"};
	if (_this == "GymMem3")exitWith {"steroids.paa"};
	if (_this == "GymMem4")exitWith {"steroids.paa"};
	if (_this == "steel")exitWith {"Steel.paa"};
	if (_this == "plastic")exitWith {"plastic.paa"};
	if (_this == "ziptie")exitWith {"ziptie.paa"};
	if (_this == "ziptie_bh")exitWith {"ziptie.paa"};
	if (_this == "ziptie2")exitWith {"ziptie.paa"};
	"case.paa"
};

_return