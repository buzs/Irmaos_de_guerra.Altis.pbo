enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\welcome.sqf";
[] execVM "scripts\safe_zone.sqf";
[] execVM "zlt_fastrope.sqf";
if(isDedicated && isNil("life_market_prices")) then
{
[] call life_fnc_marketconfiguration;
diag_log "Market prices generated!";
 
"life_market_prices" addPublicVariableEventHandler
{
diag_log format["Market prices updated! %1", _this SELECT 1];
};
 
//Start SERVER fsm
[] execFSM "core\fsm\server.fsm";
diag_log "Server FSM executed";
};
StartProgress = true;
onPlayerDisconnected { [_id, _name, _uid] call compile preProcessFileLineNumbers "core\functions\fn_onPlayerDisconnect.sqf" };