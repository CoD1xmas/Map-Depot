main()
{
	setCullFog (0, 5500, .32, .36, .40, 0);
	ambientPlay("ambient_mp_brecourt");
	
	maps\mp\_load::main();
	maps\mp\mp_dawnville_fx::main();
	maps\mp\mp_offensive_fx::main();
	
	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "winter";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "winter";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_offensive";

	//paramètres extraction
	level.obj["document_1"] = "secret documents";
	level.obj["document_2"] = "fieldphone";
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = "Capture the Secret Documents and the Fieldphone";
	game["re_defenders_obj_text"] = "Prevent allies from capturing the Secret Documents and the Fieldphone";
	game["re_spectator_obj_text"] = "Allies: Capture the Secret Documents and the Fieldphone\nAxis: Defend the Secret Documents and the Fieldphone";
	game["re_attackers_intro_text"] = "Capture the Secret Documents and the Fieldphone";
	game["re_defenders_intro_text"] = "Prevent allies from capturing the Secret Documents and the Fieldphone";

	//paramètres HeadQuarter
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (384, 1117, -73);
		radio.angles = (0, 270, 0);
		radio.targetname = "hqradio";
		
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-206, -853, -95);
		radio.angles = (0, 270, 0);
		radio.targetname = "hqradio";
		
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (645, 2727, 35);
		radio.angles = (0, 0, 0);
		radio.targetname = "hqradio";
		
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (1306, 352, -90);
		radio.angles = (0, 90, 0);
		radio.targetname = "hqradio";
		
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (607, -2321, -102);
		radio.angles = (0, 180, 0);
		radio.targetname = "hqradio";
		
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (625, 1438, 63);
		radio.angles = (0, 270, 0);
		radio.targetname = "hqradio";
		
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (2036, -942, 74);
		radio.angles = (0, 180, 0);
		radio.targetname = "hqradio";


		radio = spawn ("script_model", (0,0,0));
		radio.origin = (1129, 2847, 34);
		radio.angles = (0, 0, 0);
		radio.targetname = "hqradio";

		radio = spawn ("script_model", (0,0,0));
		radio.origin = (1564, 468, -72);
		radio.angles = (0, 270, 0);
		radio.targetname = "hqradio";

		radio = spawn ("script_model", (0,0,0));
		radio.origin = (1553, 2198, -87);
		radio.angles = (0, 315, 0);
		radio.targetname = "hqradio";
	}
}
