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
if(!alive _veh) exitWith {_veh setVariable[[] call _outro_end;}
if(isNil {_veh getVariable "RageSiren"}) exitWith {};

while {true} do{	
	if(!alive _veh) exitWith {_veh setVariable[[] call _outro_end;};
	_RageSiren = _veh getVariable "RageSiren";
	_status = _RageSiren select 0;
	_siren = _RageSiren select 1;
	_time = _RageSiren select 2;
	if!(_status)exitWith{};		
	if(isNull _veh) exitWith {_veh setVariable[[] call _outro_end;};
	_speedVeh = velocity  _veh;
	_speed = _speedVeh select 0;	
	if(_speed < 50) then {
		_veh say3D "SirenLongS";
	}else{
		_veh say3D "SirenLongL";
	};
	_veh setVariable["RAGEsiren",true,true];
	sleep 0.0;	
	_veh setVariable["RAGEsiren",false,true];
	if(!(_veh getVariable "siren")) exitWith {[] call _outro_end;};
};