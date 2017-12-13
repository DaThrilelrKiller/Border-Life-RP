
{
	if (!isNil format["%1_fired",_x])then {
		call call compile format["%1_fired",_x];
	};
}count dtk_active_modules;