main()
{
	ambientPlay("ambient_mp_carentan");

	// set the nighttime flag to be off
	setcvar("sv_night", "1" );

	maps\mp\_load::main();
	maps\mp\mp_carentan_night_fx::main();
      maps\mp\fire1::main();
      maps\mp\fire2::main();
      maps\mp\bonfire::main();
      maps\mp\fire_sound::main();
      //maps\mp\rain::main();
	//maps\mp\mp_uo_carentan::layout_images();

	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	game["hud_allies_victory_image"] = "gfx/hud/hud@mp_victory_carentan_us.dds";
	game["hud_axis_victory_image"] = "gfx/hud/hud@mp_victory_carentan_g.dds";
	
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
	game["dom_layoutimage"] = "mp_uo_carentan_dom";
	game["ctf_layoutimage"] = "mp_uo_carentan_ctf";
	game["layoutimage"] = "mp_uo_carentan";
}