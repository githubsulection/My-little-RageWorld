
Sirensystem:
The goal is to create a unique modular system that allows various modular small Sirens to add up to a big 
cool thing.
WIP

Keyhandler:	
the importaint call is this, add it to where ever you want the sirens to be activated. I asume, that you know how to do if cases... !

example:

[[vehicle player,"Wail",10.6],"life_fnc_SirenHandler",true,false] call life_fnc_mp;

explanaiton;


[ 0 ,"1", 2] call life_fnc_SirenHandler;

0: the object or better vehicle that will play the sound. should allways be   vehicle player
1: type String,  the name of the siren to call / play/ execute it.
2: type number, how long the siren is. the time from start to finish. Has to be adjustet carefully because of lag in MP

