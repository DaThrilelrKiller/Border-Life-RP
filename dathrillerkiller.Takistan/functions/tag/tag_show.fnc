tag_show = {

private ["_text","_img","_display","_control","_h","_pos","_maxDist","_dist","_name","_target"];

_target = _this select 0;
_text = _this select 1;
_img = _this select 2;

_display = (uiNamespace getVariable 'tag');
_control = _display displayCtrl 54;

_h = switch(toLower (unitPos _target))do{case 'auto':{2};case 'up':{2};case 'middle':{1.5};case 'down':{0.5};default {0}};
_h = if (typeOf _target == "DTK_InfoStand")then {1.5}else{_h};
_h = if (typeOf _target == "Suitcase")then {0.5}else{_h};

_p = getPosATL _target;
_pos = worldToScreen [_p select 0, _p select 1, _h];

_maxDist = 10;
_dist = round (_target distance player);
        
if( _maxDist > _dist &&  {alive _target} && {count _pos > 0})then{
    if( _pos select 0 > 0.4 && {_pos select 0 < 0.6} && {_pos select 1 < 0.4} && {_pos select 1 > 0.03} )then{
			_name = 
			if (_img != "")then 
			{
				_control ctrlSetStructuredText parseText format["<t size='%2' shadow='true' align='center' color='%4'><img size='3' image='%5.paa'/><br/>%1</t>",_text,2, '#dfd7a5','#DDDDDD',_img];
			}else{
				_control ctrlSetStructuredText parseText format["<t size='%2' shadow='true' align='center' color='%4'>%1</t>",_text,2, '#dfd7a5','#DDDDDD'];
			};
			
        _control ctrlShow true;
        _control ctrlSetStructuredText _name;
        _control ctrlSetPosition [(_pos select 0)-0.125,_pos select 1];
        _control ctrlCommit 0;
		
		if (isNil "t_tag_handler" || {scriptDone t_tag_handler})then {
		t_tag_handler = [_target,_control]spawn tag_handler;
		};
		
    };
};

if(!alive _target)then{_target removeAction (_target getVariable 'tag')};
false