main()
{
	setCullFog (0, 6500, .05, .05, .05, 0);
	ambientPlay("harbor_xmas");

	maps\mp\_load::main();
	thread santa();
	
	level._effect["smoke1"] = loadfx ("fx/smoke/chimneysmoke.efx");
	level._effect["fire1"] = loadfx ("fx/fire/tinybon.efx"); 

	maps\mp\_fx::loopfx("smoke1", (-10528, -7904, 480), 0.7);
	maps\mp\_fx::loopfx("smoke1", (-7832, -7576, 480), 0.7);
	
	maps\mp\_fx::loopfx("fire1", (-6092, -8352, -10), 0.6);
	
	game["allies"] = "russian";
	game["axis"] = "german";

	game["russian_soldiertype"] = "conscript";
	game["russian_soldiervariation"] = "winter";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "winter";

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	//game["layoutimage"] = "gg_harbor_extra";

	//retrival settings
	level.obj["Artillery Map"] = (&"RE_OBJ_ARTILLERY_MAP");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_HARBOR_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_HARBOR_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_HARBOR_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_HARBOR_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_HARBOR_SPAWN_DEFENDER");	
}
// END OF MAIN


// FUNCTIONS

santa()
{	
	santa = getent ("santa","targetname");
	{
		santa rotatevelocity ( ( 0, 3, 0), 999999);
	}
}
// END OF FUNCTIONS