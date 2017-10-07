
if (isNull hostage_unit)exitwith {
systemchat "There Is Currently An Active Hostage Mission!";
};



_group = createGroup east;
hostage_unit = _group createUnit ["Functionary1_EP1", getPos player, [], 2, "FORM"]; 
hostage_unit setvehicleinit 'hostage_unit = this;this setVehicleVarName "hostage_unit";';
processInitCommands;