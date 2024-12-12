main()
{
	
	ambientPlay("ambient_mp_dawnville");

	maps\mp\_load::main();
	level thread maps\mp\feufumee_fx::main();
	
	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "fallschirmjagercamo";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	game["layoutimage"] = "winterambush";
	

	
}
