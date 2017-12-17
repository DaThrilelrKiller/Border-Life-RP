
if (_this select 1 == "onKeyDown")then 
{
	_this = _this select 0;
	v_shift = _this select 2;
	v_ctrl = _this select 3;
	v_alt = _this select 4;

}else{
	v_shift = false;
	v_ctrl = false;
	v_alt = false;
};