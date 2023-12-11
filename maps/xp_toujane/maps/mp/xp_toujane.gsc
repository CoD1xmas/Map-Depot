/* 
	"Confuse them with your silence
				and
	 shock them with your results"
													
	-> https://youtu.be/Z3aZABXrAeI <-										
										*/

// Original map was made by Infinity Ward.
// Map was recreated to run in CoD 1 by Expert, 2022.

main()
{
	maps\mp\_load::main();

	setExpFog(0.00015, 0.9, 0.95, 1, 0);
	ambientPlay("amb_xp_toujane"); 

	game["allies"] = "british";
	game["axis"] = "german";

	game["british_soldiertype"] = "airborne";
	game["british_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "";
}