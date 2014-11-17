
Sirensystem:
The goal is to create a unique modular system that allows various modular small Sirens to add up to a big 
cool thing.
WIP

To describe this idea further.
I personally want a smooth nice sounding fluent system, exactly what the file in the example folder offers.
but the way how I managed it in the example file gives opportunity for more, much more.

That much that I can't stop dreaming!  Ok  I'm a Nerd   >.<  

The technical Side of the Idea is that the normal Sirens used have to start at the highest point of sound.
It would simply sound awesom. No one had this before in an Arma mission.

the second reason is that the implementation of Intro and outro sirens would be partly necessary,
to make it sound smooth when turning them on for the first time. 
And that is a point where every Officer would be unique in style of using the siren.
and it would always sound awesom!

But there lies the problem, I right now don't know how to manage the sounds and outro sounds, for example
when there should be an outro ore an intro, when to be harsh ,when to fade out, and on what fuqn buttons to
put all these options?




use a different indication Siren for each new siren because they depend on another.


this has to be overworked ......   doesen't get it anymore... 

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