Hi, 
You are looking at my RageWorld, and you may not understand why it is importaint that this stays together but it is!

if you want to or delete something then do so in the :  RageFunction.h
That works the same way as the Functions.h in altis life..

To make everything work you simply have to do the folowing and the steps in every System Readme.

Description.ext   

Add if not existent

class CfgFunctions {
	#include "RageWorld\RageFunction.h"     //<---  this is the importaint one....
	#include "Functions.h" 					// where you find this in Altis life
};
