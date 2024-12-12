main()
{
	setCullFog (300, 8000, 0.81, 0.83, 0.83, 0);
	ambientPlay("ambient_mp_brecourt");

	// set the nighttime flag to be off
	//setcvar("sv_night", "0" );

	maps\mp\_load::main();

	game["allies"] = "american";
	game["axis"] = "german";

      game["hud_allies_victory_image"]  = "gfx/hud/hud@mp_victory_train_a.dds";
      game["hud_axis_victory_image"]    = "gfx/hud/hud@mp_victory_train_g.dds";
      game["attackers"] = "allies";
      game["defenders"] = "axis";


	game["russian_soldiertype"] = "conscript";
	game["british_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	game["ctf_layoutimage"] = "cs_train";

}
