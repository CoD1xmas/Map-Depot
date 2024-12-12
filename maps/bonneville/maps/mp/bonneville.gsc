main()
{	
	setCullFog (0, 8000, 0.8, 0.8, 0.8, 0);
	ambientPlay("ambient_mp_railyard");

	maps\mp\_load::main();
	game["layoutimage"] = "bonneville";
	maps\mp\bonneville_fx::main();

	game["allies"] = "american";
	game["axis"] = "german";

	game["russian_soldiertype"] = "airborne";
	game["russian_soldiervariation"] = "winter";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "winter";
	
	game["attackers"] = "allies";
	game["defenders"] = "axis";

	

}