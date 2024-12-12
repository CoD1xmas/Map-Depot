main()
{
	//setCullFog (0, 16500, 0.7, 0.85, 1.0, 0);
	ambientPlay("ambient_mp_carentan");

	// set the nighttime flag to be off
	setcvar("sv_night", "0" );

	maps\mp\_load::main();
	maps\mp\carentan_christmas_fx::main();
	maps\mp\carentan_christmas::layout_images();



	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "fallschirmjagergrey";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	game["hud_allies_victory_image"] = "gfx/hud/hud@mp_victory_carentan_us.dds";
	game["hud_axis_victory_image"] = "gfx/hud/hud@mp_victory_carentan_g.dds";
	
	//retrival settings
	level.obj["Stern 1"] = (&"CARENTAN_CHRISTMAS_STERN1");
	level.obj["Stern 2"] = (&"CARENTAN_CHRISTMAS_STERN2");
	level.obj["Stern 3"] = (&"CARENTAN_CHRISTMAS_STERN3");
	level.obj["Stern 4"] = (&"CARENTAN_CHRISTMAS_STERN4");
	
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_CARENTAN_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_CARENTAN_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_CARENTAN_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_CARENTAN_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_CARENTAN_SPAWN_DEFENDER");




	// FOR BUILDING PAK FILES ONLY
	if (getcvar("fs_copyfiles") == "1")
	{
		precacheShader(game["dom_layoutimage"]);
		precacheShader(game["ctf_layoutimage"]);
//		precacheShader(game["bas_layoutimage"]);
		precacheShader(game["layoutimage"]);
		precacheShader(game["hud_allies_victory_image"]);
		precacheShader(game["hud_axis_victory_image"]);
	}
}


layout_images()
{
	game["dom_layoutimage"] = "carentan_christmas_dom";
	game["ctf_layoutimage"] = "carentan_christmas_ctf";
	game["layoutimage"] = "carentan_christmas";
}

