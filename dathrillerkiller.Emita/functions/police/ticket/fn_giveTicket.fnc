
if ((ctrlText 1400) == "Reason") exitWith {systemChat "invalid Reason";};
if ((ctrlText 1401) == "Price") exitWith {systemChat "invalid price";};

[AR_GivingTiketTO,["receive",player,(ctrlText 1400),(ctrlText 1401)],"ticket_ticket",true,false]call network_MPExec;
