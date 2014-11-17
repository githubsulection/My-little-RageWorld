/*
	File: fn_BlinkerRechts.sqf
	Based on:
		Author: mindstorm, modified by Adanteh
		Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	Mod: Ragebone	
	
*/
Private ["_vehicle","_lightrightback","_lightrightfront","_lightYello","_leftRed","_lightSPOTfront","_lightSPOTback"]; 
_vehicle = _this select 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "blinklightsrechts")) exitWith {};
_lightYello = [20, 20, 0.1];

_lightrightback = "#lightpoint" createVehicle getposASL _vehicle;
_lightSPOTback = "#lightpoint" createVehicle getposASL _vehicle;

_lightrightfront = "#lightpoint" createVehicle getposASL _vehicle;   
_lightSPOTfront = "#lightpoint" createVehicle getposASL _vehicle; 

_lightrightback setLightColor _lightYello; 
_lightrightfront setLightColor _lightYello; 

_lightSPOTfront setLightColor _lightYello; 
_lightSPOTback setLightColor _lightYello; 

_lightrightback setLightBrightness 0.2;  
_lightrightfront setLightBrightness 0.2;  

_lightSPOTfront setLightBrightness 10.0;  
_lightSPOTback setLightBrightness 10.0;  

_lightrightback setLightAmbient [20, 20, 0.1];
_lightrightfront setLightAmbient [20,20, 0.1]; 

_lightSPOTfront setLightAmbient [20,20, 0.1]; 
_lightSPOTback setLightAmbient [20,20, 0.1]; 

_lightrightback setLightAttenuation [0.1, 0, 1000, 1300]; 
_lightrightfront setLightAttenuation [0.1, 0, 1000, 1300]; 

_lightSPOTfront setLightAttenuation [0.1, 0, 0.1, 1300]; 
_lightSPOTback setLightAttenuation [0.1, 0, 0.1, 1300]; 

_lightrightback setLightIntensity 0;
_lightrightfront setLightIntensity 0;

_lightSPOTfront setLightIntensity 0;
_lightSPOTback setLightIntensity 0;

_lightrightback setLightFlareMaxDistance 500;
_lightrightfront setLightFlareMaxDistance 500;

_lightSPOTfront setLightFlareMaxDistance 500;
_lightSPOTback setLightFlareMaxDistance 500;

_lightrightfront setLightUseFlare true;
_lightrightback setLightUseFlare true;

_lightSPOTfront setLightUseFlare true;
_lightSPOTback setLightUseFlare true;

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":{	
		_lightrightback lightAttachObject [_vehicle, [0.8, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch   
		_lightSPOTback lightAttachObject [_vehicle, [0.8, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch   
		_lightrightback setLightFlareSize 0.0;	
		_lightSPOTback setLightFlareSize 10.0;

		_lightrightfront lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_lightrightfront setLightFlareSize 0.0;		
		
	};
	case "B_G_Offroad_01_F":{	
		_lightrightback lightAttachObject [_vehicle, [0.8, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch   
		_lightSPOTback lightAttachObject [_vehicle, [0.8, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch   
		_lightrightback setLightFlareSize 0.0;	
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_lightrightfront setLightFlareSize 0.0;	
		_lightSPOTfront setLightFlareSize 10.0;
	};
	case "B_G_Offroad_01_repair_F":{	
		_lightrightback lightAttachObject [_vehicle, [0.8, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch   
		_lightSPOTback	lightAttachObject [_vehicle, [0.8, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch    	
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;		
		
		_lightrightfront lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_lightrightfront setLightFlareSize 0.0;
		_lightSPOTfront setLightFlareSize 10.0;
			
	};		
	case "C_Offroad_01_repair_F":{			
		_lightrightback lightAttachObject [_vehicle, [0.8, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch   
		_lightSPOTback lightAttachObject [_vehicle, [0.8, -3.0, -0.4]]; //x,y,z   x seitwerts   y von vorn nach hinten    z hoch  
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_lightrightfront setLightFlareSize 0.0;
		_lightSPOTfront setLightFlareSize 10.0;
	};		
	case "B_MRAP_01_F":{
		_lightrightback lightAttachObject [_vehicle, [1.0, 1.40, -0.7]]; // -0.37 , -1.2 , 0.7  pos ist vorne 
		_lightSPOTback lightAttachObject [_vehicle, [1.0, 1.40, -0.7]]; // -0.37 , -1.2 , 0.7  pos ist vorne 
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [0.90, -4.3, -0.7]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.90, -4.3, -0.7]];
		_lightrightfront setLightFlareSize 0.0;
		_lightSPOTfront setLightFlareSize 10.0;
	};	
	case "C_SUV_01_F":{
		_lightrightback lightAttachObject [_vehicle, [0.50,2.6,-0.5]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTback lightAttachObject [_vehicle, [0.50,2.6,-0.5]]; //   war -0.37  , -1.2  0.7 
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [0.52,-3.1,-0.2]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.52,-3.1,-0.2]];
		_lightrightfront setLightFlareSize 0.0;
		_lightSPOTfront setLightFlareSize 10.0;
	};
	case "B_Quadbike_01_F":{
		_lightrightback lightAttachObject [_vehicle, [0.37,1.0,-0.5]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTback lightAttachObject [_vehicle, [0.37,1.0,-0.5]]; //   war -0.37  , -1.2  0.7 
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [0.37,-1.0,0.0]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.37,-1.0,0.0]];
		_lightrightfront setLightFlareSize 0.0;	
		_lightSPOTfront setLightFlareSize 10.0;
	};	
	
	case "C_Hatchback_01_F":{
		_lightrightback lightAttachObject [_vehicle, [0.75,1.7,-0.3]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTback lightAttachObject [_vehicle, [0.75,1.7,-0.3]]; //   war -0.37  , -1.2  0.7 
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [0.57,-2.3,-0.4]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.57,-2.3,-0.4]];
		_lightrightfront setLightFlareSize 0.0;	
		_lightSPOTfront setLightFlareSize 10.0;		
	};
	case "C_Hatchback_01_sport_F":{
		_lightrightback lightAttachObject [_vehicle, [0.75,1.7,-0.3]]; 
		_lightSPOTback lightAttachObject [_vehicle, [0.75,1.7,-0.3]]; 
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [0.57,-2.3,-0.4]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.57,-2.3,-0.4]];
		_lightrightfront setLightFlareSize 0.0;	
		_lightSPOTfront setLightFlareSize 10.0;
	};
	case "B_Truck_01_mover_F":{ // hemit ohne alles
		_lightrightback lightAttachObject [_vehicle, [0.78,4.6,-0.1]];
		_lightSPOTback lightAttachObject [_vehicle, [0.78,4.6,-0.1]];
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [0.34,-4.2,-0.55]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.34,-4.2,-0.55]];
		_lightrightfront setLightFlareSize 0.0;
		_lightSPOTfront setLightFlareSize 10.0;
	};
	case "O_MRAP_02_F":{ // ifrit
		_lightrightback lightAttachObject [_vehicle, [0.77,1.6,-0.7]];
		_lightSPOTback	lightAttachObject [_vehicle, [0.77,1.6,-0.7]]; 
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [0.7,-4.5,-0.9]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.7,-4.5,-0.9]];
		_lightrightfront setLightFlareSize 0.0;	
		_lightSPOTfront	 setLightFlareSize 10.0;	
	};
	case "I_MRAP_03_F":{
		_lightrightback lightAttachObject [_vehicle, [1,2.25,-0.5]]; //   war -0.37  , -1.2  0.7 
		_lightSPOTback lightAttachObject [_vehicle, [1,2.25,-0.5]]; //   war -0.37  , -1.2  0.7 
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [1,-3.2,0.3]];
		_lightSPOTfront lightAttachObject [_vehicle, [1,-3.2,0.3]];
		_lightrightfront setLightFlareSize 0.0;	
		_lightSPOTfront setLightFlareSize 10.0;
	};
	case"B_Truck_01_transport_F":{
		_lightrightback lightAttachObject [_vehicle, [1.15,-5,-0.3]]; //   war -0.37  , -1.2  0.7
		_lightSPOTback	lightAttachObject [_vehicle, [1.15,-5,-0.3]]; //   war -0.37  , -1.2  0.7
		_lightrightback setLightFlareSize 0.0;
		_lightSPOTback setLightFlareSize 10.0;
		
		_lightrightfront lightAttachObject [_vehicle, [0.77,5.2,0.3]];
		_lightSPOTfront lightAttachObject [_vehicle, [0.77,5.2,0.3]];
		_lightrightfront setLightFlareSize 0.0;
		_lightSPOTfront setLightFlareSize 10.0;
	};	
};
_lightrightback setLightDayLight true;
_lightrightfront setLightDayLight true;
_lightSPOTfront setLightDayLight true;
_lightSPOTback setLightDayLight true;
_leftRed = true;  
while{ (alive _vehicle)} do{ 	
	if((!(_vehicle getVariable "Right"))) exitWith {};	
	if((_vehicle getVariable "Left") OR (_vehicle getVariable "Warn")) exitWith {};	
	if(_leftRed) then{  
		_leftRed = false;  
		_lightrightfront setLightBrightness 2.0;
		_lightSPOTfront	setLightBrightness 10.0;  	
		_lightrightback setLightBrightness 2.0;  
		_lightSPOTback setLightBrightness 10.0;  
	}else{  
		_leftRed = true;  
		_lightrightback setLightBrightness 0.0;  
		_lightSPOTback setLightBrightness 0.0; 
		_lightrightfront setLightBrightness 0.0; 
		_lightSPOTfront	setLightBrightness 0.0; 
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightrightback;
deleteVehicle _lightrightfront;
deleteVehicle _lightSPOTfront;
deleteVehicle _lightSPOTback;