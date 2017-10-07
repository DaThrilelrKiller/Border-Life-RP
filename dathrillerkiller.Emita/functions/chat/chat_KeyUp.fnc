private ["_Key","_return"];

_Key = _this select 1;
_return = false;


if (_Key == 28)then 
{
	_display = (findDisplay 24);
	_chat = _display displayCtrl 101; 
	(ctrlText _chat) call chat_commands;
	_return = true;
}; 

_return