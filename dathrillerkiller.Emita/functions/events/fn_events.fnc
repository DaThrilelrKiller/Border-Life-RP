"EMSMissionType" addPublicVariableEventHandler {(_this select 1) spawn ems_EMSMissionDamageHandler;};
"PureHouses" addPublicVariableEventHandler {call DTK_HouseInit;};
player addEventHandler ["handleDamage", {_this call events_sethit;}];
player addEventHandler ["fired",{_this execVM "scripts\fired.sqf"}];

"PVEH_netSay3D" addPublicVariableEventHandler {
      private["_array"];
      _array = _this select 1;
	  if (player distance  (_array select 0) < (_array select 2))then
	  {
	  (_array select 0) say3D (_array select 1);
	  };
};

/*On ESC*/
[]spawn events_OnPause;

if (ar_side == "EMS")then
{
player addEventHandler ["fired", {[(_this select 0),(_this select 1), (_this select 4)]call ems_firehose;}];
};