/*
File: fn_BlinkerInit.sqf
	Author: Norman Göhl, AKA Ragebone 
	Additional informations under :
	Link:
	
	Description:
	is called when someone turns his indecators  ON or OFF ! 
	
	gets called over the Keyhandler, by pressing  Shift + Q /E  ore just Tab ore Shift + Tab.  :D 	
*/
Private ["_veh","_indicator"];
_veh = _this select 0;
_indicator = _this select 1;
if(isNil "_veh" OR isNull _veh ) exitWith {}; 	
if(!(alive _veh )) exitWith {}; 			
if((driver _veh) != player) exitWith {};		
if( !(_veh isKindOf "LandVehicle"))exitWith{};
// presets.
if(isNil {_veh getVariable"Left"})then{_veh setVariable["Left",FALSE,TRUE];};
if(isNil {_veh getVariable"Right"})then{_veh setVariable["Right",FALSE,TRUE];};
if(isNil {_veh getVariable"Warn"})then{_veh setVariable["Warn",FALSE,TRUE];};

switch(_indicator)do{
	case "left":{;	
		if(_veh getVariable"Left") then{	
			_veh setVariable["Left",FALSE,TRUE];
		} else {		
			_veh setVariable["Left",TRUE,TRUE];
			_veh setVariable["Warn",FALSE,TRUE];		
			_veh setVariable["Right",FALSE,TRUE];	
			[[_veh,0.45],"life_fnc_BlinkerLinks",true,false] call life_fnc_MP;
		};
	};	
	case "right":{;	
		if(_veh getVariable"Right") then{	
			_veh setVariable["Right",FALSE,TRUE];
		} else {		
			_veh setVariable["Right",TRUE,TRUE];	
			_veh setVariable["Left",FALSE,TRUE];	
			_veh setVariable["Warn",FALSE,TRUE];		
			[[_veh,0.45],"life_fnc_BlinkerRechts",true,false] call life_fnc_MP;
		};
	};
	case "warning":{;	
		if(_veh getVariable"Warn") then {
		_veh setVariable["Warn",FALSE,TRUE];		
		}else{			 
			_veh setVariable["Warn",TRUE,TRUE];	
			_veh setVariable["Right",FALSE,TRUE];
			_veh setVariable["Left",FALSE,TRUE];
			[[_veh,0.45],"life_fnc_WarnBlinker",true,false] call life_fnc_MP;			
		};
	};
	default{hint" du bist bei default init Blinker";};
};