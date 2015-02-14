/*
File: fn_BlinkerInit.sqf
	Author: Norman Göhl, AKA Ragebone 
	Additional informations under :
	Link:
	
	Description:
	is called when someone turns his indecators  ON or OFF ! 
	
	gets called over the Keyhandler, by pressing  Shift + Q /E  ore just Tab ore Shift + Tab.  :D 	
*/
private["_state","_veh","_indicator","_time"];
_veh = _this select 0;
_indicator = _this select 1;
_time = 0.45;
if(isNil "_veh" OR isNull _veh ) exitWith {}; 	
if(!(alive _veh )) exitWith {}; 			
if((driver _veh) != player) exitWith {};		
if( !(_veh isKindOf "LandVehicle"))exitWith{};


if!(typeOf _veh in [
"B_G_Offroad_01_repair_F",
"B_G_Offroad_01_F",
"C_Offroad_01_repair_F",
"C_Offroad_01_F",

"C_SUV_01_F",

"C_Hatchback_01_sport_F",
"C_Hatchback_01_F",

"B_MRAP_01_F",
"I_MRAP_03_F",
"O_MRAP_02_F",

"B_Truck_01_mover_F",
"B_Truck_01_transport_F",

"I_Truck_02_transport_F",
"I_Truck_02_covered_F",

"O_Truck_03_device_F",
"O_Truck_03_covered_F",
"O_Truck_03_transport_F",

"B_Quadbike_01_F"])exitWith{};

if(isNil{ret})then{ret=true;};
_state = _veh getVariable["RAGE_Blinker",""];
if(_state == "" OR _state != _indicator)then{
	_veh setVariable["RAGE_Blinker",_indicator];
	switch(_indicator)do{
		case "left":{	 waitUntil{ret}; ret = false; ret = [_veh,_time] call life_fnc_BlinkerLinks;};	
		case "right":{	 waitUntil{ret}; ret = false; ret = [_veh,_time] call life_fnc_BlinkerRechts;};
		case "warning":{ waitUntil{ret}; ret = false; ret = [_veh,_time] call life_fnc_WarnBlinker;};	
		default{hint"Something went Wrong"; ret = true;};
	};
}else{_veh setVariable["RAGE_Blinker","",true];};	
