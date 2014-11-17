/*
	File: fn_copSiren1.sqf
	Author: Ragebone ,  based on Bryan "Tonic" Boardwine	versin.  10%	
	Description:
		checks stuff, 
		starts the siren.
*/
private["_vehicle","_speedVeh","_speed"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNil {_vehicle getVariable "RAGEsiren1"}) then {_vehicle setVariable["RAGEsiren1",false,true];};
if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "siren1"}) exitWith {};
if(_vehicle getVariable "RAGEsiren1")exitWith{};	
while {true} do{
	if(_vehicle getVariable "RAGEsiren2")then{
		_vehicle setVariable["siren2",false,true];
		waitUntil{
			if(_vehicle getVariable "RAGEsiren2")then{false}else{true};
		};
	};	
	if!(_vehicle getVariable"siren1") exitWith {_vehicle setVariable["RAGEsiren1",false,true];_vehicle setVariable["siren1",false,true];};
	if(!alive _vehicle) exitWith {_vehicle setVariable["RAGEsiren1",false,true];_vehicle setVariable["siren1",false,true];};
	if(isNull _vehicle) exitWith {_vehicle setVariable["RAGEsiren1",false,true];_vehicle setVariable["siren1",false,true];};
	_speedVeh = velocity  _vehicle;
	_speed = _speedVeh select 0;	
	if(_speed < 50) then {
		_vehicle say3D "SirenLongS";
	}else{
		_vehicle say3D "SirenLongL";
	};
	_vehicle setVariable["RAGEsiren1",true,true];
	sleep 1.453;	
	_vehicle setVariable["RAGEsiren1",false,true];
	if(!(_vehicle getVariable "siren1")) exitWith {_vehicle setVariable["RAGEsiren1",false,true];_vehicle setVariable["siren1",false,true];};
};