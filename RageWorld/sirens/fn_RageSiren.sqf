/*
	File: fn_RageSiren.sqf
	Author: Ragebone 
	Description:
	Handles Everything that shouts out the siren.	
	_veh,_siren,_time
*/
private["_veh","_RageSiren","_status","_siren","_time","_speedVeh","_speed"];
_veh = _this select 0;

if(isNull _veh) exitWith {};
if(!alive _veh) exitWith {};

while {true} do{	
	if(isNull _veh) exitWith {true;};
	if(!alive _veh) exitWith {true;};	
	_RageSiren = _veh getVariable["RageSiren",["",0]];	
	_siren = _RageSiren select 0;
	_time = _RageSiren select 1;
	if(_siren == "")exitWith{true;};		
	_veh say3D _siren;
	sleep _time;		
};