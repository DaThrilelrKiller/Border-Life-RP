
private ["_Quest","_randomQuest","_name","_desc","_items"];
_Quest = 
[
["Minner","Go mine and bring home some precouse gems",["Gold","copper","steel","coal","sand"]],
["Roughneck", "Drill and sell oil",["Oil","OilBarrel"]],
["Fisherman", "Go on a fishing adventure and make more money doing so",["blowfish","mackerel","herring","trout","walleye","perch","bass"]],
["Hunters or Hunted", "Grab some buddys and go hunting",["boar","rawcow","cowmeat","rabbit"]],
["Lumber Jack", "Grab a chainswal and take down the forest",["wood","lummber"]]
];

_randomQuest = _Quest call BIS_selectRandom;

_name = (_randomQuest select 0);
_desc = (_randomQuest select 1);
_items = (_randomQuest select 2);

QuestItems = _items;

_message = format ['Name: %1 <br/><br/> Description: %2',_name,_desc];
["true","Your Quest",_message]call Main_Notification;

[_name]spawn 
{
_name = (_this select 0);
QuestTime = 3600;
	while {QuestTime > 0} do 
	{
		if (QuestTime == 1800)then
		{
			_message = format ['Time Left %1 <br/><br/> %2',_name,QuestTime];
			["true","Your Quest",_message]call Main_Notification;
		};
		sleep 30;
		QuestTime = QuestTime - 30;
	};
};