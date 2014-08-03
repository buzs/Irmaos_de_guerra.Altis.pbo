/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["Kavala", 500],["BaseRebelde", 50],["BaseRebelde1", 50],["Athira", 200],["Pyrgos", 500],["SafeVIP", 100]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "Você esta em zona segura Proibido cometer crimes,atropelar e roubar!"

     if (isDedicated) exitWith {};
     waitUntil {!isNull player};

switch (playerSide) do
{
	case west:
	{};
	
	case civilian:
	{


     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
             titleText [MESSAGE, "PLAIN", 3];
             };
        }];  
	};
};