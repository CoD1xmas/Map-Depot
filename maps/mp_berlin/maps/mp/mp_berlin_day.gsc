main()
{
	//setCullFog (0, 8000, .32, .36, .40, 0);
	setCullFog(0, 15000, .64, .64, .6, 0);
	ambientPlay("ambient_mp_pavlov");

	maps\mp\_load::main();
	maps\mp\mp_pavlov_fx::main();
	
	game["allies"] = "russian";
	game["axis"] = "german";

	game["russian_soldiertype"] = "veteran";
	game["russian_soldiervariation"] = "winter";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";


	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_dawnville";

	//retrival settings
	level.obj["Field Radio"] = (&"RE_OBJ_FIELD_RADIO");
	game["re_attackers"] = "axis";
	game["re_defenders"] = "allies";
	game["re_attackers_obj_text"] = (&"RE_OBJ_DAWNVILLE_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_DAWNVILLE_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_DAWNVILLE_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_DAWNVILLE_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_DAWNVILLE_SPAWN_DEFENDER");

}

