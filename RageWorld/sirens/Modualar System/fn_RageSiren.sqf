/*
	File: fn_RageSiren.sqf
	Author: Ragebone 
	Description:
	Handles Everything that shouts out the siren.	
	_veh,_siren,_time
*/
private["_veh","_RageSiren","_status","_siren","_time","_speedVeh","_speed"];
_veh = _this select 0;

_RageSiren = _veh getVariable "RageSiren";
_status = _RageSiren select 0;
_siren = _RageSiren select 1;
_time = _RageSiren select 2;

_flipp = {
	// shout is not here, that is right! 
	_veh setVariable["siren1",false,true];
	_veh setVariable["siren2",false,true];
	waitUntil{
		if(_veh getVariable "RAGEShout" AND _veh getVariable "RAGEsiren1" AND _veh getVariable "RAGEsiren2")then{false}else{true};
	};
};

if(isNil {_veh getVariable "RAGEsiren"}) then {_veh setVariable["RAGEsiren",false,true];};
if(isNull _veh) exitWith {};
if(isNil {_veh getVariable "siren"}) exitWith {};
if(_veh getVariable "RAGEsiren")exitWith{};
// Ok it should be the first time running this ore we shouldnt be here.
_veh say3D "SirenIntro";
sleep 0.0;
if!(_veh getVariable"siren")exitWith{[] call _outro_end;};		
// loop to make things run forever and easy : D	
while {true} do{
	if!(_veh getVariable"siren")exitWith{[] call _outro_end;};		
	if(_veh getVariable "RAGEShout" OR _veh getVariable "RAGEsiren1" OR _veh getVariable "RAGEsiren2")then{[]call _flipp;};	
	if(!alive _veh) exitWith {_veh setVariable[[] call _outro_end;};
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