//mp_sicily

main()
{
//	setCullFog (0, 16500, 0.7, 0.85, 1.0, 0);
	ambientPlay("ambient_day");

	// set the nighttime flag to be off
	setcvar("sv_night", "0" );

	maps\mp\_load::main();
//	maps\mp\mp_depot_fx::main();

	game["allies"] = "british";
	game["axis"] = "german";

	game["british_soldiertype"] = "commando";
	game["british_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_sicily.dds";

	game["sec_type"] = "destroy";				//What type of secondary objective

        //retrival settings
	level.obj["Code Book"] = (&"RE_OBJ_CODE_BOOK");
	level.obj["Field Radio"] = (&"RE_OBJ_FIELD_RADIO");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";

        game["re_attackers_obj_text"] = (&"GMI_MP_RE_OBJ_SICILY_ATTACKER");
	game["re_defenders_obj_text"] = (&"GMI_MP_RE_OBJ_SICILY_DEFENDER");
	game["re_spectator_obj_text"] = (&"GMI_MP_RE_OBJ_SICILY_SPECTATOR");
	game["re_attackers_intro_text"] = (&"GMI_MP_RE_OBJ_SICILY_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"GMI_MP_RE_OBJ_SICILY_SPAWN_DEFENDER");

	//maps\mp\_artillery_strike_gmi::Initialize();
	//maps\mp\_artillery_strike_gmi::Precache();
	//trigger = getent("artillery_strike_trigger","targetname");
	//trigger thread maps\mp\_artillery_strike_gmi::TriggerZoneThink();

	game["hud_allies_victory_image"] = "gfx/hud/hud@mp_victory_sicily_b.dds";
        game["hud_axis_victory_image"] = "gfx/hud/hud@mp_victory_sicily_g.dds";

	game["dom_layoutimage"] = "mp_sicily_dom.dds";

        game["ctf_layoutimage"] = "mp_sicily_ctf.dds";


	//thread flag_def();

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
	thread killzone();
	

}


killzone()
{

	while(1)
	{
		players = getentarray("player", "classname");
		for(i=0;i<players.size;i++)
		{
			if(players[i].sessionstate == "playing" && (int)players[i].origin[2] <= 456 && isalive(players[i]) )
			{
			
			iprintln(players[i].name + " was eaten by a shark.");
			players[i] suicide();
			}
		}
		wait 0.1;
	}

}




