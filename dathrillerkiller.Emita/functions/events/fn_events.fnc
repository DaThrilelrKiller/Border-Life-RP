"EMSMissionType" addPublicVariableEventHandler {(_this select 1) spawn ems_EMSMissionDamageHandler;};
"PureHouses" addPublicVariableEventHandler {call DTK_HouseInit;};
player addEventHandler ["handleDamage", {_this call events_sethit;}];
player addEventHandler ["fired",{_this execVM "scripts\fired.sqf"}];

/*On ESC*/
[]spawn events_OnPause;

if (ar_side == "EMS")then
{
player addEventHandler ["fired", {[(_this select 0),(_this select 1), (_this select 4)]call ems_firehose;}];
};