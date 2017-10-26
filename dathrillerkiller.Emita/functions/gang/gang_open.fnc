private ["_name"];

_name = player call gang_name;
if (_name != "")then {
/* if your in a gang already open managment */
_name call gang_manage;

}else{
/* else your a noob and should proably join one */
call gang_new;
};
