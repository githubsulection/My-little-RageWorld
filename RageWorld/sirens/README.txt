
Sirensystem:

use a different indication Siren for each new siren because they depend on another.


Keyhandler:

//F Key
	case 33:{
		if(!isNil{_veh getVariable"xcar"})then{
			if(_veh != player && ((driver _veh) == player)) then{		
				_type = _veh getVariable"xcar";
				if(_type in ["cop_car","Ucop_car"])then{				
					if(_shift)exitWith{													
						if(isNil {_veh getVariable "siren2"}) then {_veh setVariable["siren2",false,true];};
						if(_veh getVariable "siren2") then{
							titleText ["Yelp Aus","PLAIN"];								
							_veh setVariable["siren2",false,true];
						}else{
							titleText ["Yelp An","PLAIN"];
							_veh setVariable["siren2",true,true];					
							[[_veh],"life_fnc_copSiren2",nil,true] spawn life_fnc_MP;
						};
					};						
					if(_ctrlKey)exitWith{														
						titleText ["Durchsage","PLAIN"];
						_veh setVariable["durchsage",true,true];					
						[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;														
					};
					if(!_shift AND !_ctrlKey)exitWith{
						if(isNil {_veh getVariable "siren1"}) then {_veh setVariable["siren1",false,true];};
						if(_veh getVariable "siren1") then{
							titleText [localize "STR_MISC_SirensOFF","PLAIN"];
							_veh setVariable["siren1",false,true];
						}else{
							titleText [localize "STR_MISC_SirensON","PLAIN"];
							_veh setVariable["siren1",true,true];					
							[[_veh],"life_fnc_copSiren1",nil,true] spawn life_fnc_MP;
						};
					};			
				};	
				if(_type in ["med_car"])exitWith{					
					if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
					if((_veh getVariable "siren")) then{
						titleText [localize "STR_MISC_SirensOFF","PLAIN"];
						_veh setVariable["siren",false,true];
					}else{
						titleText [localize "STR_MISC_SirensON","PLAIN"];
						_veh setVariable["siren",true,true];					
						[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
					};
				};
			};		
		};
	};