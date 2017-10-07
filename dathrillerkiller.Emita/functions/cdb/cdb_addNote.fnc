private ["_object","_note","_notes"];

_object = _this select 0;
_note = _this select 1;

_notes = _object getVariable "cdb_notes";
_notes = [_notes,[]]select (isNil "_notes");

_notes set [count _notes,[_note,name player]];

_object setVariable ['cdb_notes',_notes,true];