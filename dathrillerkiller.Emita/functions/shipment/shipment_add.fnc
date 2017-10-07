
_location = (lbData [1500, (lbCurSel 1500)]);
_item = (lbData [1501, (lbCurSel 1501)]);
_vehicle = call compile (lbData [2100, (lbCurSel 2100)]);

if (!isNil "_vehicle" && {!isNull _vehicle})then
{
	if ([_vehicle,_item, 1] call storage_add)then
	{
		shipment_vehicle = _vehicle;
		shipment_road_time = 0;
		shipment_offroad_time = 0;
		shipment_police_distance_1 = 100000000;
		Shipment_destination = _location;
		shipment_item = _item;
		shipment_wp =(group player) addWaypoint [getMarkerPos _location, 0];
		(group player) setCurrentWaypoint  shipment_wp;
		shipment_wp setWaypointDescription "Weapon Drop Off!";

		systemchat format ["You Have Taken A %1 Shipment Deliver It To %2",lbText [1501, (lbCurSel 1501)],lbText [1500,(lbCurSel 1500)]];
		[]spawn shipment_handler;
	}
	else{
		systemchat "Your Vehicle Does Not Have Enough Storage To Transport The Shipment!";
	};
}else{
systemchat "Please Select The Vehicle You Would Like To Make The Shipment With!";
};