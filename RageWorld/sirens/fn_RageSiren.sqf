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
if(isNil {_veh getVariable "RageSiren"}) exitWith {};
_RageSiren = _veh getVariable "RageSiren";
_status = _RageSiren select 0;	
if!(_status)exitWith{};	
	
while {true} do{	
	if(isNull _veh) exitWith {_veh setVariable ["SirenOff",true,true];	};
	if(!alive _veh) exitWith {_veh setVariable ["SirenOff",true,true];	};
	if(isNil {_veh getVariable "RageSiren"}) exitWith {_veh setVariable ["SirenOff",true,true];	};
	_RageSiren = _veh getVariable "RageSiren";
	_status = _RageSiren select 0;
	_siren = _RageSiren select 1;
	_time = _RageSiren select 2;
	if!(_status)exitWith{_veh setVariable ["SirenOff",true,true];	};	
	_veh setVariable ["SirenOff",false,true];	
	_veh say3D _siren;
	sleep _time;	
	_veh setVariable ["SirenOff",true,true];	
};