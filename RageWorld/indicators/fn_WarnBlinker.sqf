/*
	File: fn_WarnBlinker.sqf
	Based on:
		Author: mindstorm, modified by Adanteh
		Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	Mod: Ragebone	
	
*/

Private ["_leftRed","_vehicle","_lightYello","_leftBack","_leftSPOTback","_leftFront","_leftSPOTfront","_rightBack","_rightSPOTback","_rightFront","_rightSPOTfront","_brightSPOT","_bright"]; 
_vehicle = _this select 0;
_lightYello = [20, 20, 0.1];
_pos = getposASL _vehicle;
_leftBack = "#lightpoint" createVehicle _pos;
_leftSPOTback = "#lightpoint" createVehicle _pos;
_leftFront = "#lightpoint" createVehicle _pos;
_leftSPOTfront = "#lightpoint" createVehicle _pos;
_rightBack = "#lightpoint" createVehicle _pos;
_rightSPOTback = "#lightpoint" createVehicle _pos;
_rightFront = "#lightpoint" createVehicle _pos;
_rightSPOTfront = "#lightpoint" createVehicle _pos;

_leftBack setLightColor _lightYello; 
_leftSPOTback setLightColor _lightYello; 
_leftFront setLightColor _lightYello; 
_leftSPOTfront setLightColor _lightYello; 
_rightBack setLightColor _lightYello; 
_rightSPOTback setLightColor _lightYello; 
_rightFront setLightColor _lightYello; 
_rightSPOTfront setLightColor _lightYello; 

_leftBack setLightBrightness 0.2;
_leftSPOTback setLightBrightness 0.2;
_leftFront setLightBrightness 0.2;
_leftSPOTfront setLightBrightness 0.2;
_rightBack setLightBrightness 0.2;
_rightSPOTback setLightBrightness 0.2;
_rightFront setLightBrightness 0.2;
_rightSPOTfront setLightBrightness 0.2;

_leftBack setLightAmbient [20, 20, 0.1];
_leftSPOTback setLightAmbient [20, 20, 0.1];
_leftFront setLightAmbient [20, 20, 0.1];
_leftSPOTfront setLightAmbient [20, 20, 0.1];
_rightBack setLightAmbient [20, 20, 0.1];
_rightSPOTback setLightAmbient [20, 20, 0.1];
_rightFront setLightAmbient [20, 20, 0.1];
_rightSPOTfront setLightAmbient [20, 20, 0.1];

_leftBack setLightAttenuation [0.1, 0, 1000, 1300]; 
_leftSPOTback setLightAttenuation [0.1, 0, 0.1, 1300]; 
_leftFront setLightAttenuation [0.1, 0, 1000, 1300]; 
_leftSPOTfront setLightAttenuation [0.1, 0, 0.1, 1300];
_rightBack setLightAttenuation [0.1, 0, 1000, 1300]; 
_rightSPOTback setLightAttenuation [0.1, 0, 0.1, 1300]; 
_rightFront setLightAttenuation [0.1, 0, 1000, 1300]; 
_rightSPOTfront setLightAttenuation [0.1, 0, 0.1, 1300];

_leftBack setLightIntensity 0;
_leftSPOTback setLightIntensity 0;
_leftFront setLightIntensity 0;
_leftSPOTfront setLightIntensity 0;
_rightBack setLightIntensity 0;
_rightSPOTback setLightIntensity 0;
_rightFront setLightIntensity 0;
_rightSPOTfront setLightIntensity 0;

_leftBack  setLightFlareMaxDistance 500;
_leftSPOTback setLightFlareMaxDistance 500;
_leftFront setLightFlareMaxDistance 500;
_leftSPOTfront setLightFlareMaxDistance 500;
_rightBack setLightFlareMaxDistance 500;
_rightSPOTback setLightFlareMaxDistance 500;
_rightFront setLightFlareMaxDistance 500;
_rightSPOTfront setLightFlareMaxDistance 500;

_leftBack  setLightUseFlare true;  
_leftSPOTback setLightUseFlare true;
_leftFront setLightUseFlare true;
_leftSPOTfront setLightUseFlare true;
_rightBack setLightUseFlare true;
_rightSPOTback setLightUseFlare true; 
_rightFront setLightUseFlare true;
_rightSPOTfront setLightUseFlare true;

_leftBack  setLightDayLight true;
_leftSPOTback  setLightDayLight true;
_leftFront setLightDayLight true;
_leftSPOTfront setLightDayLight true;
_rightBack setLightDayLight true;
_rightSPOTback setLightDayLight true;
_rightFront setLightDayLight true;
_rightSPOTfront setLightDayLight true;

switch (typeOf _vehicle) do{
	case "C_Offroad_01_F":{		
		_leftSPOTback 	lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.8, -3.0, -0.4]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_rightFront 	lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_rightBack 		lightAttachObject [_vehicle, [0.8, -3.0, -0.4]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};
	case "C_Offroad_01_repair_F":{		
		_leftSPOTback 	lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.8, -3.0, -0.4]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_rightFront 	lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_rightBack 		lightAttachObject [_vehicle, [0.8, -3.0, -0.4]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};
	case "B_G_Offroad_01_F":{		
		_leftSPOTback 	lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.8, -3.0, -0.4]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_rightFront 	lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_rightBack 		lightAttachObject [_vehicle, [0.8, -3.0, -0.4]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};
	case "B_G_Offroad_01_repair_F":{		
		_leftSPOTback 	lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.80, 2.1, -0.4]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.80, -3.0, -0.4]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.8, -3.0, -0.4]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_rightFront 	lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_rightBack 		lightAttachObject [_vehicle, [0.8, -3.0, -0.4]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};	
	case "B_MRAP_01_F":{		
		_leftSPOTback 	lightAttachObject [_vehicle, [-0.90, -4.3, -0.7]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-1.0, 1.40, -0.7]];  
		_leftFront 		lightAttachObject [_vehicle, [-1.0, 1.40, -0.7]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.90, -4.3, -0.7]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.8, -3.0, -0.4]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_rightFront 	lightAttachObject [_vehicle, [0.8, 2.1, -0.4]];
		_rightBack 		lightAttachObject [_vehicle, [0.8, -3.0, -0.4]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};	
	case "C_SUV_01_F":{		
		_leftSPOTback 	lightAttachObject [_vehicle,[-0.52,-3.1,-0.2]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.50,2.6,-0.5]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.50,2.6,-0.5]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.52,-3.1,-0.2]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.52,-3.1,-0.2]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.50,2.6,-0.5]];
		_rightFront 	lightAttachObject [_vehicle, [0.50,2.6,-0.5]];
		_rightBack 		lightAttachObject [_vehicle, [0.52,-3.1,-0.2]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};	
	case "B_Quadbike_01_F":{		
		_leftSPOTback 	lightAttachObject [_vehicle, [-0.37,-1.0,0.0]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.37,1.0,-0.5]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.37,1.0,-0.5]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.37,-1.0,0.0]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.37,-1.0,0.0]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.37,1.0,-0.5]];
		_rightFront 	lightAttachObject [_vehicle, [0.37,1.0,-0.5]];
		_rightBack 		lightAttachObject [_vehicle, [0.37,-1.0,0.0]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};	
	case "C_Hatchback_01_F":{		
		_leftSPOTback 	lightAttachObject [_vehicle, [-0.57,-2.3,-0.4]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.75,1.7,-0.3]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.75,1.7,-0.3]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.57,-2.3,-0.4]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.57,-2.3,-0.4]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.75,1.7,-0.3]];
		_rightFront 	lightAttachObject [_vehicle, [0.75,1.7,-0.3]];
		_rightBack 		lightAttachObject [_vehicle, [0.57,-2.3,-0.4]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};
	case "C_Hatchback_01_sport_F":{		
		_leftSPOTback 	lightAttachObject [_vehicle, [-0.57,-2.3,-0.4]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.75,1.7,-0.3]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.75,1.7,-0.3]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.57,-2.3,-0.4]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.57,-2.3,-0.4]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.75,1.7,-0.3]];
		_rightFront 	lightAttachObject [_vehicle, [0.75,1.7,-0.3]];
		_rightBack 		lightAttachObject [_vehicle, [0.57,-2.3,-0.4]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};	
	case "B_Truck_01_mover_F":{		
		_leftSPOTback 	lightAttachObject [_vehicle, [-0.34,-4.2,-0.55]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.78,4.6,-0.1]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.78,4.6,-0.1]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.34,-4.2,-0.55]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.34,-4.2,-0.55]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.78,4.6,-0.1]];
		_rightFront 	lightAttachObject [_vehicle, [0.78,4.6,-0.1]];
		_rightBack 		lightAttachObject [_vehicle, [0.34,-4.2,-0.55]];		
		
		_leftSPOTback 	setLightFlareSize 5.0;
		_leftSPOTfront 	setLightFlareSize 5.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 5.0;
		_rightSPOTfront	setLightFlareSize 5.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};	
	case "O_MRAP_02_F":{ // ifrit		 
		_leftSPOTback 	lightAttachObject [_vehicle, [-0.7,-4.5,-0.9]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.77,1.6,-0.7]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.77,1.6,-0.7]]; 
		_leftBack  		lightAttachObject [_vehicle, [-0.7,-4.5,-0.9]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [0.7,-4.5,-0.9]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.77,1.6,-0.7]];
		_rightFront 	lightAttachObject [_vehicle, [0.77,1.6,-0.7]];
		_rightBack 		lightAttachObject [_vehicle, [0.7,-4.5,-0.9]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};	
	case "I_MRAP_03_F":{ 	 
		_leftSPOTback 	lightAttachObject [_vehicle, [-1,-3.2,0.3]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-1,2.25,-0.5]];  
		_leftFront 		lightAttachObject [_vehicle, [-1,2.25,-0.5]]; 
		_leftBack  		lightAttachObject [_vehicle, [-1,-3.2,0.3]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [1,-3.2,0.3]];
		_rightSPOTfront	lightAttachObject [_vehicle, [1,2.25,-0.5]];
		_rightFront 	lightAttachObject [_vehicle, [1,2.25,-0.5]];
		_rightBack 		lightAttachObject [_vehicle, [1,-3.2,0.3]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};	
	case "B_Truck_01_transport_F":{  
		_leftSPOTback 	lightAttachObject [_vehicle, [-1.15,-5,-0.3]];
		_leftSPOTfront 	lightAttachObject [_vehicle, [-0.77,5.2,0.3]];  
		_leftFront 		lightAttachObject [_vehicle, [-0.77,5.2,0.3]]; 
		_leftBack  		lightAttachObject [_vehicle, [-1.15,-5,-0.3]];
		
		_rightSPOTback 	lightAttachObject [_vehicle, [1.15,-5,-0.3]];
		_rightSPOTfront	lightAttachObject [_vehicle, [0.77,5.2,0.3]];
		_rightFront 	lightAttachObject [_vehicle, [0.77,5.2,0.3]];
		_rightBack 		lightAttachObject [_vehicle, [1.15,-5,-0.3]];		
		
		_leftSPOTback 	setLightFlareSize 10.0;
		_leftSPOTfront 	setLightFlareSize 10.0;
		_leftFront 		setLightFlareSize 0.0;
		_leftBack  		setLightFlareSize 0.0;
		
		_rightSPOTback 	setLightFlareSize 10.0;
		_rightSPOTfront	setLightFlareSize 10.0;
		_rightFront 	setLightFlareSize 0.0;
		_rightBack 		setLightFlareSize 0.0;
	};	
};
if (sunOrMoon < 1) then {
	_brightSPOT = 4;    // Nacht 
	_bright = 2
}else{
	_brightSPOT = 10;  // Tag
	_bright = 2
};

_leftRed = true;  
while{ (alive _vehicle)} do{  
	if((!(_vehicle getVariable "Warn"))) exitWith {};
	if((_vehicle getVariable "Right") OR (_vehicle getVariable "Left")) exitWith {};
	if(_leftRed) then{  
		_leftRed = false;				
		_leftSPOTback 	setLightBrightness _brightSPOT;  		
		_leftSPOTfront 	setLightBrightness _brightSPOT;  		
		_leftFront 		setLightBrightness _bright;  
		_leftBack  		setLightBrightness _bright;
		_rightSPOTback 	setLightBrightness _brightSPOT;  		
		_rightSPOTfront	setLightBrightness _brightSPOT;  		
		_rightFront 	setLightBrightness _bright;  
		_rightBack 		setLightBrightness _bright;  

	}else{  
		_leftRed = true; 				
		_leftSPOTback 	setLightBrightness 0.0;  
		_leftSPOTfront 	setLightBrightness 0.0;  
		_leftFront 		setLightBrightness 0.0;  
		_leftBack  		setLightBrightness 0.0;  
		_rightSPOTback 	setLightBrightness 0.0;  
		_rightSPOTfront	setLightBrightness 0.0;  
		_rightFront 	setLightBrightness 0.0;  
		_rightBack 		setLightBrightness 0.0;  
	};  
	sleep (_this select 1);  
};	
deleteVehicle _leftSPOTback; 	 
deleteVehicle _leftSPOTfront; 	
deleteVehicle _leftFront; 		
deleteVehicle _leftBack;  		
deleteVehicle _rightSPOTback;	
deleteVehicle _rightSPOTfront;
deleteVehicle _rightFront; 	
deleteVehicle _rightBack; 	
	
