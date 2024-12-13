
main()
{
	ambientPlay("ambient_mp_rocket");
	
	maps\mp\_load::main();
	maps\mp\mp_sheltercomplex_fx::main();
	
	game["allies"] = "british";
	game["axis"] = "german";

	game["british_soldiertype"] = "commando";
	game["british_soldiervariation"] = "winter";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "winter";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_sheltercomplex";	

	//retrival settings
	level.obj["document_1"] = (&"RE_OBJ_CODE_BOOK");
	level.obj["document_2"] = (&"RE_OBJ_FIELD_RADIO");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_CARENTAN_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_CARENTAN_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_CARENTAN_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_CARENTAN_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_CARENTAN_SPAWN_DEFENDER");


	
}


