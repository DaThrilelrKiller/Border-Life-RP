_Faces = ["Face01","Face02","Face03","Face04","Face05","Face06","Face07","Face08","Face09","Face10","Face11","Face12","Face13","Face14","Face15","Face16","Face17","Face18","Face19","Face20","Face21","Face22","Face23","Face24","Face25","Face26","Face27","Face28","Face29","Face30","Face31","Face32","Face33","Face34","Face35","Face36","Face37","Face38","Face39","Face40","Face41","Face42","Face43","Face44","Face45","Face46","Face47","Face48","Face49","Face50","Face51","Face52","Face53","Face54","Face55","Face56","Face57","Face58","Face59","Face60","Face60_Hair","Face61","Face61_Hair","Face62","Face63","Face64","Face65","Face66","Face67","Face68","Face69","Face70","Face71","Face72","Face73","Face74","Face75","Face76","Face77","Face78","Face79","Face80","Face81","Face82","Face83","Face84","Face86","Face85","Face87","Face88","Face89","Face90","Face91","Face92","Face93","Face94","Face95","Face96","Face97","Face98","Face99","Face100","Face101","Face102","Face103","Face104","Face105","Face106","Face107","Face01_EP1","Face02_EP1","Face03_EP1","Face04_EP1","Face05_EP1","Face06_EP1","Face07_EP1","Face08_EP1","Face09_EP1","Face10_EP1","Face11_EP1","Face12_EP1","Face13_EP1","Face14_EP1","Face15_EP1","Face16_EP1","Face17_EP1","Face18_EP1","Face19_EP1","Face20_EP1","Facegrover_EP1","Facegrover_wounded_EP1","Face108_PMC","Face109_PMC","Face110_PMC","Face111_PMC","Face112_PMC","Face113_PMC","Face114_PMC","Face115_PMC","Face116_PMC","Face117_PMC","Face118_PMC","Face119_PMC","Face120_PMC","Face121_PMC","Face122_PMC","Face123_PMC","Face124_PMC","FrostFace","Face01_baf","Face02_baf","Face03_baf","Face04_baf","Face05_baf","Face09_baf","Face06_baf","Face07_baf","Face08_baf","FacePoet","FaceStranger","FaceTanny"];
_Days = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"];
_Months = ["January","February","March","April","May","June","July","August","September","October","November","December"];
_Year = [1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016];
{
	_index = lbAdd [5004, _x];
	lbSetData [5004, _index, _x];	
	lbSetColor [5004,_index,[0,0,0, 1]];
}count _Faces;

{
	_index = lbAdd [5006, _x];
	lbSetData [5006, _index, _x];
}count _Days;

{
	_index = lbAdd [5007, str _x];
	lbSetData [5007, _index,str  _x];
}count _Year;

{
	_index = lbAdd [5005, _x];
	lbSetData [5005, _index, _x];
}count _Months;

lbSetCurSel [5004, 0];
lbSetCurSel [5006, 0];
lbSetCurSel [5007, 0];
lbSetCurSel [5005, 0];

[]spawn
{
	while {ctrlVisible 5004} do
	{
		_Cursel = (lbCurSel 5004);
		waitUntil {_Cursel != (lbCurSel 5004)};
		_facetext = format['sfg_textures\Faces\%1.pac',(lbData [5004, (lbCurSel 5004)])];
		ctrlSetText [5003,_facetext];
	};
};


buttonSetAction [5002, "
_Saveface = lbData [5004, (lbCurSel 5004)];
_Saveday = lbData [5006, (lbCurSel 5006)];
_Savemonth = lbData [5005, (lbCurSel 5005)];
_Saveyear = lbData [5007, (lbCurSel 5007)];
_data = [_Saveface,_Savemonth,_Saveday,_Saveyear];
profileNamespace setVariable ['tickleme',_data];
closeDialog 0;
"];