[] execVM "scripts\shopfarmfaclicenseactions.sqf";
call events_events;
[player,"cookie", 1] call storage_add;

diag_log text "[LOG] Border Life Roleplay finished!";