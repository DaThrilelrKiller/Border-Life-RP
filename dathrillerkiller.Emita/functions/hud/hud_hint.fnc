private ['_ui','_hintstrl','_text','_length','_y','_array','_numberarray','_lines','_done','_ForInex','_index'];

1002 cutRsc ['AR_hint','PLAIN'];

_array = [_this,' '] call string_split;
_numberarray = [];
{_numberarray set [count _numberarray,toArray _x]}forEach _array;
_lines = 0;
_done = [];

		{
			if !(_ForEachIndex in _done)then
			{
				_index = _x;
				_ForInex = _forEachIndex;
				while {count _index < 20} do 
				{
					_ForInex = (_ForInex + 1);
					_index = _index + (_numberarray select _ForInex);
					if !(count _index > 20)then {
					_done set [count _done,_ForInex];
					};
				};
				_lines = _lines + 20;
			};
		}forEach _numberarray;
		_lines = _lines + count _numberarray;
		systemchat str (_lines/20);

_length = if (_lines < 20)then {1}else {(_lines/20)};
_length = _length * 0.035;


_ui = uiNameSpace getVariable 'AR_hint';
_hintstrl = _ui displayCtrl 153;

_hintstrl ctrlSetPosition [(safeZoneX + (safeZoneW * (1 - (0.29 / SafeZoneW)))),(safeZoneY + 0.1), 0.25,_length];

_hintstrl ctrlSetStructuredText  parseText _this;
_hintstrl ctrlCommit 0;