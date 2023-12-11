main()
{
	setCullFog (1500, 4500, 0.16863, 0.207843, 0.239215, 0);
	ambientPlay("bellicourt_night_fix_amb");

	maps\mp\_load::main();
	maps\mp\mp_bellicourt_night_fix_fx::main();
	
	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "fallschirmjagergrey";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	game["layoutimage"] = "mp_bellicourt_night";

	//retrival settings
	level.obj["losbook"] = (&"RE_OBJ_CODE_BOOK");					//script_game_objective 
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = "Capture the code book and radio, eliminate all resistance.";
	game["re_defenders_obj_text"] = "Defend the code book and radio at all cost.";
	game["re_spectator_obj_text"] = "Allies: Must capture the code book and radio";
	game["re_attackers_intro_text"] = "Capture the code book and radio to help foil the German attacks.";
	game["re_defenders_intro_text"] = "Defend the code book and radio from falling into allied hands.\nThe future of the Third Reich depends upon it.";

	//hq settings
	if (getcvar("g_gametype") != "hq")
	{
		radios = getentarray ("hqradio","targetname");
		for (i=0;i<radios.size;i++)
			//radios[i] hide();
			radios[i] delete();
	}
}