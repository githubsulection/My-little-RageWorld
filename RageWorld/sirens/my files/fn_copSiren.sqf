/*
	File: fn_copSiren.sqf
	Author: Ragebone ,  based on Bryan "Tonic" Boardwine	versin.  10%	
	Description:
		checks stuff, 
		starts the durchsage.
*/
private["_vehicle","_speedVeh","_speed"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNil { _vehicle getVariable "RAGEsiren"}) then {_vehicle setVariable["RAGEsiren",false,true];};
if(_vehicle getVariable "RAGEsiren")then{
	waitUntil{
		if(_vehicle getVariable "RAGEsiren")then{false}else{true};
	};
};	

if(!(_vehicle getVariable "durchsage")) exitWith {_vehicle setVariable["RAGEsiren",false,true];};
if(count (crew (_vehicle)) == 0) exitWith{_vehicle setVariable["RAGEsiren",false,true]};
if(!alive _vehicle) exitWith{_vehicle setVariable["RAGEsiren",false,true];_vehicle setVariable["durchsage",false,true];};
if(isNull _vehicle) exitWith{_vehicle setVariable["RAGEsiren",false,true];_vehicle setVariable["durchsage",false,true];};

_vehicle say3D "Durchsage";
_vehicle setVariable["RAGEsiren",true,true];
sleep 5.661;	
_vehicle setVariable["RAGEsiren",false,true];
_vehicle setVariable["durchsage",false,true];