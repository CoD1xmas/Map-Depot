main()
{
	setCullFog (0,15000, 0.7, 0.85, 1.0, 0);
	ambientPlay("ambient_mp_carentan");


	maps\mp\_load::main();
	maps\mp\mp_carentan_fx::main();  

	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "axis";
	game["defenders"] = "allies";
  
        game["hud_allies_victory_image"] = "gfx/hud/hud@mp_victoire_SpeedBallXtra_us.dds";
	game["hud_axis_victory_image"] 	= "gfx/hud/hud@mp_victoire_SpeedBallXtra_g.dds";	
	

	//retrival settings
	level.obj["livrecode"] = (&"RE_OBJ_CODE_BOOK");	
	game["re_attackers"] = "axis";
	game["re_defenders"] = "allies";
	game["re_attackers_obj_text"] = "Capturez le livre de code! / Capture the codebook!";
	game["re_defenders_obj_text"] = "Empechez les boches de capturer le livre de code ! / Protect the codebook from the axis !";
	game["re_spectator_obj_text"] = "C'est ça le pissou, regarde ! /That's it loooser, look !";
	game["re_attackers_intro_text"] = "Foncez !";
	game["re_defenders_intro_text"] = "Soyez brave !";

        //Texte CTF


        game["ctf_attackers_obj_text"] = "Capturez le drapeau enemi !  /  Capture the enemy flag!";
        game["ctf_spectator_obj_text"] = "C'est ça le voyeur, regarde ! / That's it looser, go home to mother!";

        game["layoutimage"] = "speedballxtra";

}