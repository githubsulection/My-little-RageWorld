/*
Author: Ragebone
Description:
This is the main Key of the Modular Siren System.
This sets up everything related to the system.
It gets called throug the keyhandler when a specific siren is what you want.

is also importaint for JIP and Variable handling.
*/
private["_veh","_siren","_time","_RageSiren","_status","_oldSiren","_oldTime"];
_veh = _this select 0;
_siren = _this select 1;  // siren String.
_time = _this select 2; // the time a specifik siren should runn.


//if(isNil{_veh getVariable"xcar"})exitWith{};

// lets first check some stuff and set some thing up ....
if(isNil{_veh getVariable "RageSiren"})then{_veh setVariable["RageSiren",[false,"",0],true];_veh setVariable ["SirenOff",true,true];}; 

_RageSiren = _veh getVariable "RageSiren";
_status = _RageSiren select 0;
_oldSiren = _RageSiren select 1;

// FLIPFLOP
if(_status)then{
	if(_oldSiren == _siren)then{
		titleText [localize "STR_MISC_SirensOFF","PLAIN"];
		_veh setVariable["RageSiren",[false,"",0],true];			// info 0 is false when the siren should turn off in a moment
	}else{
		_veh setVariable["RageSiren",[true,_siren,_time],true];		// info 0 is still true  script will keep on going but with new siren to play..
	};	
}else{	
	if(_veh getVariable "SirenOff")then{ // true when the siren is off 
		titleText [localize "STR_MISC_SirensON","PLAIN"];
		_veh setVariable["RageSiren",[true,_siren,_time],true];	
		[[_veh],"life_fnc_RageSiren",true,false] call life_fnc_mp;
	}else{
		_veh setVariable["RageSiren",[true,_siren,_time],true];	
	};		
};