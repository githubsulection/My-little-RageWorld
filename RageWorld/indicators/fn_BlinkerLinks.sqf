/*
	File: fn_copLights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/

Private ["_vehicle","_lightleftBack","_lightleftFront","_lightYello","_leftRed","_lightSPOTfront","_lightSPOTback","_brightSPOT","_bright"]; 
_vehicle = _this select 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "blinklightsrechts")) exitWith {};
_lightYello = [20, 20, 0.1];

_lightleftBack = "#lightpoint" createVehicle getposASL _vehicle; 
_lightSPOTback = "#lightpoint" createVehicle getposASL _vehicle;  
_lightleftFront = "#lightpoint" createVehicle getposASL _vehicle; 
_lightSPOTfront = "#lightpoint" createVehicle getposASL _vehicle;  

_lightleftBack setLightColor _lightYello; 
_lightSPOTback setLightColor _lightYello;
_lightleftFront setLightColor _lightYello;
_lightSPOTfront  setLightColor _lightYello;

_lightleftBack setLightBrightness 0.2;
_lightleftFront setLightBrightness 0.2;
_lightSPOTfront setLightBrightness 10.0;  
_lightSPOTback setLightBrightness 10.0; 

_lightleftBack setLightAmbient [20, 20, 0.1];
_lightSPOTback setLightAmbient [20,20, 0.1]; 
_lightleftFront setLightAmbient [20,20, 0.1]; 
_lightSPOTfront setLightAmbient [20,20, 0.1]; 

_lightleftBack setLightAttenuation [0.1, 0, 1000, 1300]; 
_lightSPOTback setLightAttenuation [0.1, 0, 0.1, 1300]; 
_lightleftFront setLightAttenuation [0.1, 0, 1000, 1300]; 
_lightSPOTfront setLightAttenuation [0.1, 0, 0.1, 1300]; 

_lightleftBack setLightIntensity 0;
_lightSPOTback setLightIntensity 0;
_lightleftFront setLightIntensity 0;
_lightSPOTfront setLightIntensity 0;

_lightleftBack setLightFlareMaxDistance 500;
_lightSPOTback setLightFlareMaxDistance 500;
_lightSPOTfront setLightFlareMaxDistance 500;
_lightleftFront setLightFlareMaxDistance 500;

_lightleftFront setLightUseFlare true;
_lightSPOTfront setLightUseFlare true;
_lightleftBack setLightUseFlare true;
_lightSPOTback setLightUseFlare true;

switch (typeOf _vehicle) do{
	case "C_Offroad_01_F":{
		_lightleftFront lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; // x y z 
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; // x y z 
		_lightSPOTfront	setLightFlareSize 10.0;

		_lightleftBack lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch 
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch 
		_lightSPOTback	setLightFlareSize 10.0;	
	};	
	case "B_G_Offroad_01_F":{
		_lightleftFront lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; // x y z 
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; // x y z 
		_lightSPOTfront setLightFlareSize 10.0;	

		_lightleftBack lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch 
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch
		_lightSPOTback	setLightFlareSize 10.0;
	};	
	case "B_G_Offroad_01_repair_F":{
		_lightleftFront lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; // x y z 
		_lightleftFront setLightFlareSize 0.0;	
		_lightSPOTfront lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; // x y z 
		_lightSPOTfront	setLightFlareSize 10.0;
		
		_lightleftBack lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch 
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch 
		_lightSPOTback	setLightFlareSize 10.0;		
	};	
	case "C_Offroad_01_repair_F":{
		_lightleftFront lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; // x y z 
		_lightleftFront setLightFlareSize 0.0;	
		_lightSPOTfront lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; // x y z 
		_lightSPOTfront	setLightFlareSize 10.0;
		
		_lightleftBack lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch 
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch 
		_lightSPOTback	setLightFlareSize 10.0;			
	};	
	case "B_MRAP_01_F":{
		_lightleftBack lightAttachObject [_vehicle, [-0.90, -4.3, -0.7]];
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.90, -4.3, -0.7]];
		_lightSPOTback	setLightFlareSize 10.0;			
		
		_lightleftFront lightAttachObject [_vehicle, [-1.0, 1.40, -0.7]]; // -0.37 , -1.2 , 0.7  pos y nach vorne 
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront lightAttachObject [_vehicle, [-1.0, 1.40, -0.7]]; // -0.37 , -1.2 , 0.7  pos y nach vorne 
		_lightSPOTfront	setLightFlareSize 10.0;
	};	
	case "C_SUV_01_F":{
		_lightleftFront lightAttachObject [_vehicle, [-0.50, 2.6, -0.5]];
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront lightAttachObject [_vehicle, [-0.50, 2.6, -0.5]];
		_lightSPOTfront	setLightFlareSize 10.0;
		
		_lightleftBack lightAttachObject [_vehicle, [-0.52, -3.1, 0.0]]; //   war -0.37  , -1.2  0.7 
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.52, -3.1, 0.0]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTback	setLightFlareSize 10.0;	
	};
	case "B_Quadbike_01_F":{
		_lightleftFront lightAttachObject [_vehicle, [-0.37, 1.0, 0.0]];
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront lightAttachObject [_vehicle, [-0.37, 1.0, 0.0]];
		_lightSPOTfront	setLightFlareSize 10.0;

		_lightleftBack lightAttachObject [_vehicle, [-0.37, -1.0, 0.0]]; //   war -0.37  , -1.2  0.7 
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.37, -1.0, 0.0]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTback	setLightFlareSize 10.0;			
	};	
	case "C_Hatchback_01_F":{
		_lightleftFront lightAttachObject [_vehicle, [-0.83,1.7,-0.3]]; //   war -0.37  , -1.2  0.7 
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront lightAttachObject [_vehicle, [-0.83,1.7,-0.3]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTfront	setLightFlareSize 10.0;
		
		_lightleftBack lightAttachObject [_vehicle, [-0.60,-2.3,-0.4]];
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.60,-2.3,-0.4]];
		_lightSPOTback		setLightFlareSize 10.0;		
	};
	case "C_Hatchback_01_sport_F":{
		_lightleftFront lightAttachObject [_vehicle, [-0.83,1.7,-0.3]]; //   war -0.37  , -1.2  0.7 
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront lightAttachObject [_vehicle, [-0.83,1.7,-0.3]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTfront	setLightFlareSize 10.0;
		
		_lightleftBack lightAttachObject [_vehicle, [-0.60,-2.3,-0.4]];
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.83,1.7,-0.3]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTback	setLightFlareSize 10.0;			
	};	
	case "B_Truck_01_mover_F":{
		_lightleftFront lightAttachObject [_vehicle, [-0.77,4.6,-0.1]]; 
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront lightAttachObject [_vehicle, [-0.77,4.6,-0.1]]; 
		_lightSPOTfront	setLightFlareSize 10.0;
		
		_lightleftBack lightAttachObject [_vehicle, [-0.34,-4.2,-0.55]];
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.34,-4.2,-0.55]];
		_lightSPOTback	setLightFlareSize 10.0;			
	};
	case "O_MRAP_02_F":{ // ifrit
		_lightleftFront lightAttachObject [_vehicle, [-0.77,1.6,-0.7]]; //   war -0.37  , -1.2  0.7 
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront lightAttachObject [_vehicle, [-0.77,1.6,-0.7]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTfront	setLightFlareSize 10.0;
		
		_lightleftBack lightAttachObject [_vehicle, [-0.7,-4.5,-0.9]];
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-0.7,-4.5,-0.9]];
		_lightSPOTback	setLightFlareSize 10.0;	
				
	};
	case "I_MRAP_03_F":{
		_lightleftFront lightAttachObject [_vehicle, [-1,2.25,-0.5]]; //   war -0.37  , -1.2  0.7 
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront lightAttachObject [_vehicle, [-1,2.25,-0.5]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTfront	setLightFlareSize 10.0;
		
		_lightleftBack lightAttachObject [_vehicle, [-1,-3.2,0.3]];
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-1,-3.2,0.3]];
		_lightSPOTback setLightFlareSize 10.0;		
				
	};
	case "B_Truck_01_transport_F":{
		_lightleftBack lightAttachObject [_vehicle, [-1.1,-5,-0.3]]; //   war -0.37  , -1.2  0.7 
		_lightleftBack setLightFlareSize 0.0;
		_lightSPOTback lightAttachObject [_vehicle, [-1.1,-5,-0.3]]; //   war -0.37  , -1.2  0.7 		 
		_lightSPOTback setLightFlareSize 10.0;		
		
		_lightleftFront lightAttachObject [_vehicle, [-0.77,5.2,0.3]];
		_lightleftFront setLightFlareSize 0.0;
		_lightSPOTfront	lightAttachObject [_vehicle, [-0.77,5.2,0.3]];
		_lightSPOTfront	setLightFlareSize 10.0; 	
				
	};	
};
//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightleftBack setLightDayLight true;
_lightleftFront setLightDayLight true;
_lightSPOTfront setLightDayLight true;
_lightSPOTback setLightDayLight true;

if (sunOrMoon < 1) then {
	_brightSPOT = 4;    // Nacht 
	_bright = 2
} else {
	_brightSPOT = 10;  // Tag
	_bright = 2
};

_leftRed = true;  
while{ (alive _vehicle)} do{  
	if((!(_vehicle getVariable "Left"))) exitWith {};
	if((_vehicle getVariable "Right") OR (_vehicle getVariable "Warn")) exitWith {};
	if(_leftRed) then{  
		_leftRed = false;  
		_lightleftFront setLightBrightness _bright;  
		_lightSPOTfront	setLightBrightness _brightSPOT;  		
		_lightleftBack setLightBrightness _bright; 
		_lightSPOTback setLightBrightness _brightSPOT;  		
	}else{  
		_leftRed = true;  
		_lightleftBack setLightBrightness 0.0;  
		_lightSPOTback setLightBrightness 0.0; 		
		_lightleftFront setLightBrightness 0.0;  
		_lightSPOTfront	setLightBrightness 0.0; 		
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightleftBack;
deleteVehicle _lightleftFront;

deleteVehicle _lightSPOTfront;
deleteVehicle _lightSPOTback;		