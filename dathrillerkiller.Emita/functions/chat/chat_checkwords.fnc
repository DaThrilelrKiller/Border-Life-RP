private ["_return","_word"];

_return = 0;
_word = toLower _x;

{
_return = if (_word in ["nigger","fuck off","fag","faggit","dick","pussy","asshole","fuck","bastard","bitch","fuck"])then {server globalchat format ["You have revived a chat warning for the word: %1 (%2/3) warnings left",_x,(ar_chatwarning + 1)]; 1}else {_return};
}count _this;
if (_return)then {ar_chatwarning = ar_chatwarning + 1};

