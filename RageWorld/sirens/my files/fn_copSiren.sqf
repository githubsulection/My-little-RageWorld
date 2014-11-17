/*
	File: fn_copSiren1.sqf
	Author: Ragebone ,  based on Bryan "Tonic" Boardwine	versin.  10%	
	Description:
		checks stuff.
		if its the first time,intro.
		Check?  outro?
		if its not the first time another version is still looping down there.... 
		waits for all the other stuff to finish, espically the Shout, cuz the shout doesent wait!
		starts the Long normal siren.
		
*/
private["_veh","_speedVeh","_speed","_outro_end","_flipp"];
_veh = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

// setUp functions:
_outro_end = {
	_veh setVariable["RAGEsiren",false,true];
	if!(_veh getVariable"siren1" OR _veh getVariable"siren2")then{
		_veh say3D "SirenLongOutro";
	};
};
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