/*
Author: Ragebone
Description:
This is the main Key of the Modular Siren System.
This sets up everything related to the system.
It gets called throug the keyhandler when a specific siren is what you want.

is also importaint for JIP and Variable handling.
*/
private["_veh","_siren","_time","_RageSiren","_ret_siren","_oldSiren","_oldTime"];
_veh = _this select 0;
_siren = _this select 1;  	// siren String.
_time = _this select 2; 	// siren runn time

if(isNil{ret_siren})then {ret_siren = true};
_RageSiren = _veh getVariable["RageSiren",["",0]];
_oldSiren = _RageSiren select 0;

// FLIPFLOP
if(_oldSiren != _siren)then{		
	titleText [localize "STR_MISC_SirensON","PLAIN"];
	_veh setVariable["RageSiren",[_siren,_time],true];		
	 waitUntil{_veh getVariable ["RAGE_S",true]}; _veh setVariable ["RAGE_S",false,true]; _ret_siren = [_veh] call life_fnc_RageSiren;
	 _veh setVariable ["RAGE_S",_ret_siren,true];
}else{		
	titleText [localize "STR_MISC_SirensOFF","PLAIN"];
	_veh setVariable["RageSiren",["",0],true];			
	_veh setVariable ["RAGE_S",true,true];	
};

