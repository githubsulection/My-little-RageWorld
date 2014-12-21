/*
Author: Ragebone
Description:
This is the main Key of the Modular Siren System.
This sets up everything related to the system.
It gets called throug the keyhandler when a specific siren i what you want.

is also importaint for JIP and Variable handling.
*/
private[];
_veh = _this select 0;
_siren = _this select 1;  // siren String.
_time = _this select 2; // the time a specifik siren should runn.

// lets first check some stuff and set some thing up ....

if(isNil{_veh getVariable "siren"})then{_veh setVariable["siren",false,true];};
if(isNil{_veh getVariable "RageSiren"})then{_veh setVariable["RageSiren",false,true];}; 
if(isNil{_veh getVariable "RageSirenFuture"})then{_veh setVariable["RageSirenFuture",false,true];}; 


//ok  lets have a bit fun with strings ....
_siren (a string )





// MP call final call.
[[_veh,_siren,_time],"life_fnc_RageSiren",true,false] call life_fnc_mp;