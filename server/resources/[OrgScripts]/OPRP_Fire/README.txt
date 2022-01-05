FireScript by Albo1125 for FiveM (.net/lua).
Copyright applies - strictly no redistribution, please. Please review the licence.

Install like any other resource - add to resources folder, add to citmp-server.yml.

You can start a fire using /startfire NUMFLAMES RADIUS. In this command, NUMFLAMES determines the maximum number of flames the fire will have (maximum 90), while RADIUS specifies the radius of the fire in metres (maximum 30). 
A good example use of the command would be /startfire 40 10. In interiors, you may want to reduce the radius slightly as otherwise the flames will go outside a lot too. 
To add an explosion when the fire starts, add true to the end of the command. E.g. /startfire 40 10 true
There can be multiple fires at the same time. Please be mindful of this, however, as the bigger the size/number of fires, the more impact it has on everyone’s FPS.

Fires created by this script can be extinguished using fire extinguishers. 
To stop the fire you're near to, you can either extinguish it all, or you can type /stopfire. 
This command will stop all fires created by the script that are near you (within 35 metres) - some small fires that are spread by the game may still exist, they'll go out after a few seconds or you can extinguish them. 
Before the fire brigade leave the scene, they are advised to use the /stopfire command to ensure the fire is completely out scriptwise.
To stop all fires in the world, type /stopallfires. Please do not use this command unless you're not able to get near enough to the fire to use /stopfire.

You're also able to create 'smoke without fire' e.g. for a call where someone gets concerned for fire over barbecue smoke. 
The command is: /startsmoke SCALE. SCALE is replaced by a number (recommended to keep it between 0.5-5) that indicates the magnitude of the smoke. E.g. /startsmoke 1
To stop the nearby smoke, type /stopsmoke. 
To stop all smoke in the world, type /stopallsmoke. Please do not use this command unless you're not able to get near enough to the fire to use /stopfire.

Commands overview:
/startfire MAXFLAMES MAXRANGE EXPLOSION - Starts fire with specified params. Explosion is a boolean and is optional.
/stopfire - Stops nearby fires.
/stopallfires - Stops all fires.
/startsmoke SCALE - Starts smoke with specified SCALE.
/stopsmoke - Stops nearby smoke.
/stopallsmoke - Stops all smoke.