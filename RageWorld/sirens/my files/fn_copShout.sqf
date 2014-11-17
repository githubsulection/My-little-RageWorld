/*
	File: fn_copShout.sqf
	Author: Ragebone ,  based on Bryan "Tonic" Boardwine	versin.  15%	
	Description:
	Starts the onetime shout out siren, shouting out to stop the FUQN Car. ore so ...
	if the button is pressed again than ehm..  it exits... 
		
*/
private["_veh"];
_veh = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

// errorchecks
if(isNil {_veh getVariable"RAGEShout"})then{_veh setVariable["RAGEShout",false,true];};
if(_veh getVariable"RAGEShout")exitWith{};
if(count (crew (_veh)) == 0) exitWith{_vehicle setVariable["RAGEShout",false,true]};
if(!alive _veh) exitWith{_veh setVariable["RAGEShout",false,true];};
if(isNull _veh) exitWith{_veh setVariable["RAGEShout",false,true];};

_veh setVariable["RAGEShout",true,true];
// how to do this better ?  i don't like this how it looks.
if(_veh getVariable "RAGESiren1" OR _veh getVariable "RAGESiren2")then{		
	waitUntil{
		if(_veh getVariable "RAGEsiren1" AND _veh getVariable "RAGESiren2")then{false}else{true};
	};
};
_veh say3D "Durchsage";
sleep 0.0;	// ehm  yea  the time ... 
_vehicle setVariable["RAGEShout",false,true];