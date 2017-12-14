
_plate = CtrlText 3;
_array = count toArray _plate;

if (_plate == "")exitWith {
systemchat "Please enter a plate to make or choose one from the list above";
};

if (_array != 6)then {
systemchat "There must be six characters on a licence plate";
};