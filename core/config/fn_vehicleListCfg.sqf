#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",5000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",3500],
			["C_Hatchback_01_F",10500],
			["C_Offroad_01_F",20500],
			["C_SUV_01_F",65000],
			["C_Van_01_transport_F",60000]
		];
	};
	
	case "donator_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1750],
			["C_Hatchback_01_F",6500],
			["C_Offroad_01_F",8750],
			["C_Hatchback_01_sport_F",9500],
			["C_SUV_01_F",10050],
			["O_MRAP_02_F",50000],
			["B_G_Offroad_01_armed_F",100000],
			["C_Van_01_transport_F",28000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",250000]
			
		];	
	};
	
	case "donator_truck":
	{
		_return =
		[
			["C_Van_01_box_F",42000],
			["I_Truck_02_transport_F",52500],
			["I_Truck_02_covered_F",70000],
			["B_Truck_01_transport_F",192500],
			["O_Truck_03_transport_F",140000],
			["O_Truck_03_covered_F",175000],
			["B_Truck_01_box_F",195000],
			["O_Truck_03_device_F",220000]
			
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",3500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",950000],
			["B_Heli_Light_01_unarmed_F",400000],
			["O_Heli_Light_02_unarmed_F",625000]
			
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",9000]];
		_return set[count _return,
		["B_Quadbike_01_F",2000]];
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_MRAP_03_F",90000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["I_MRAP_03_hmg_F",400000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",800000],
			["O_Heli_Light_02_unarmed_F",1500000]
			
		];
	};
	
	case "donator_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",200000],
			["O_Heli_Light_02_unarmed_F",410000],
			["I_Heli_Transport_02_F",900000],
			["O_Heli_Attack_02_black_F",4000000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",75000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",100000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
		};
		
		
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",75000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",100000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
		};
		
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
