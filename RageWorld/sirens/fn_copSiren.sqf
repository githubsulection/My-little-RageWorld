/*
	File: fn_copSiren.sqf
	Author: Ragebone ,  based on Bryan "Tonic" Boardwine	versin.  10%	
	Description:
	Start, 
	Check am ai already running  ( indication-var.)?
	is another siren runnign? lets wait for it to stop.
	play it  indication var true;
	stopped  indication-var false;
	runn again.
*/
private["_vehicle","_speedVeh","_speed"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
// ERROR -checks
if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "siren1"}) exitWith {};
if(isNil {_vehicle getVariable "RAGEsiren1"}) then {_vehicle setVariable["RAGEsiren1",false,true];};
if(_vehicle getVariable "RAGEsiren1")exitWith{}; // the actual indication-variable. 
// the loop	
while {true} do{ 
	// Flipflop. if the outher is running, turn it of ( siren X = false) and wait for teh indication-variable				
	if(_vehicle getVariable "RAGEsiren2")then{ 
		_vehicle setVariable["siren2",false,true];
		waitUntil{
			if(_vehicle getVariable "RAGEsiren2")then{false}else{true};
		};
	};	
	if!(_vehicle getVariable"siren1") exitWith {_vehicle setVariable["RAGEsiren1",false,true];_vehicle setVariable["siren1",false,true];};
	if(!alive _vehicle) exitWith {_vehicle setVariable["RAGEsiren1",false,true];_vehicle setVariable["siren1",false,true];};
	if(isNull _vehicle) exitWith {_vehicle setVariable["RAGEsiren1",false,true];_vehicle setVariable["siren1",false,true];};
	// possible speed check for loudness ? 
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