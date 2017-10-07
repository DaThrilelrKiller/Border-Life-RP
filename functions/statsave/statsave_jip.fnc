

_this call S_statsave_LoadFromDB;
_this call S_statsave_WLoadFromDB;

/* temp place for remote functions */
_owner = owner(_this select 0);
_functionsa = PG_SSF;

{
_owner publicVariableClient _x;
}forEach _functionsa;