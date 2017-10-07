/*
File: fn_GetHousePrice.sqf
Desc: Returns the price of a house
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	0. House (OBJ)
*/

private ["_type","_price"];
_type = typeOf (_this select 0);

	_price = switch(_type)do
	{
		case "Land_HouseV2_04_interier":
		{
			1000
		};
		case "Land_House_C_4_EP1":
		{
			1250
		};
		case "Land_HouseV2_02_Interier":
		{
			1500
		};
		case "Land_HouseV_1L2":
		{
			1250
		};
		case "Land_HouseV_2L":
		{
			1000
		};
		case "Land_HouseV_2I":
		{
			1500
		};
		case "Land_HouseV_1L1":
		{
			1000
		};
		case "Land_sara_domek_zluty":
		{
			1250
		};
		case "Land_dum_mesto_in":
		{
			1250
		};
		case "Land_A_Villa_EP1":
		{
			1500
		};
		case "Land_dum_mesto2":
		{
			2000
		};
		case "Land_House_C_10_EP1":
		{
			2000
		};
		case "Land_HouseV_1I1":
		{
			2000
		};
		case "Land_HouseV2_01B":
		{
			1500
		};
		case "Land_HouseV2_03B":
		{
			1250
		};
		case "Land_HouseV_1T":
		{
			2000
		};
		case "Land_cihlovej_dum_in":
		{
			1000
		};
		case "Land_hruzdum":
		{
			1000
		};
		default
		{
			1000
		};
	};
	
	_price