
_id _this select 0;
_pos _this select 1;

_dir _this select 2;
_size _this select 3;
_text _this select 4;
_shape _this select 5;
_type _this select 6;
_color _this select 7;
_alpha _this select 8;

_marker = createMarker [_id, _pos];

if (!isNil "_dir")then {
_marker setMarkerDir _dir;
};
if (!isNil "_size")then {
_marker setMarkerSize _size;
};
if (!isNil "_text")then {
_marker setMarkerText _text;
};
if (!isNil "_shape")then {
_marker setMarkerShape _shape;
};
if (!isNil "_type")then {
_marker setMarkerType _type;
};
if (!isNil "_color")then {
_marker setMarkerColor _color;
};
if (!isNil "_alpha")then {
_marker setMarkerAlpha _alpha;
};

