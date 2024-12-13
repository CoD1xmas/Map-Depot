main()
{

	setCullFog (0, 3000, .32, .36, .40, 0);
	ambientPlay("ambient_mp_hurtgen");
	
	maps\mp\_load::main();
	maps\mp\mp_foy_fx::main();
	

	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "winter";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "winter";

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";

	game["re_attackers_obj_text"] = "Link up with I Company and get back to your foxhole";
	game["re_defenders_obj_text"] = "Don't let EASY link back up together";
	game["re_spectator_obj_text"] = "Allies: Link up with I Company and get back to your foxhole\nAxis: Don't let EASY link back up together";
	

level._effect["smoke"] = loadfx ("fx/smoke/ash_smoke.efx");
maps\mp\_fx::loopfx("smoke", (2032, 7848, 1476), 0.7);

game["layoutimage"] = "mp_foy";
}