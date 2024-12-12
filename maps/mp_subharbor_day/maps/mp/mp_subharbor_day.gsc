main()
{	
	setCullFog (0, 3500, .8, .8, .8, 0 );
	ambientPlay("ambient_mp_ship");

	maps\mp\_load::main();
	maps\mp\mp_subharbor_day_fx::main();

	game["allies"] = "british";
	game["axis"] = "german";

	game["british_soldiertype"] = "airborne";
	game["british_soldiervariation"] = "normal";
	game["german_soldiertype"] = "fallschirmjagergrey";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	level.obj["1"] = (&"RE_OBJ_CODE_BOOK");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_BRECOURT_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_BRECOURT_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_BRECOURT_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_BRECOURT_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_BRECOURT_SPAWN_DEFENDER");

	
}

