main()
{
	setCullFog(0, 6000, .32, .36, .40, 0 );
	ambientPlay("ambient_mp_carentan");


	maps\mp\_load::main();
	maps\mp\mortar::main();
maps\mp\uo_viks_omaha_v3_fx::main();
maps\mp\sound1::main();
maps\mp\sound2::main();
maps\mp\sound3::main();
maps\mp\sound4::main();
maps\mp\sound5::main();
maps\mp\sound6::main();
maps\mp\sound7::main();
maps\mp\sound8::main();
maps\mp\sound9::main();
maps\mp\sound10::main();
maps\mp\sound11::main();
	//level thread maps\mp\_tankdrive_gmi::main();
	///level thread maps\mp\_jeepdrive_gmi::main();
	//level thread maps\mp\_flak_gmi::main();

	game["allies"] = "american";
	game["axis"] = "german";

        game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";

       	//retrival settings
	level.obj["Code Book"] = (&"RE_OBJ_CODE_BOOK");
	level.obj["Field Radio"] = (&"RE_OBJ_FIELD_RADIO");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = "Capture the code book and field radio.Take them to the allied beachhead.(Blue box)";
	game["re_defenders_obj_text"] = "Defend the code book and field radio from allies.Keep them from the allied beachhead.(Blue box)";
	game["re_spectator_obj_text"] = "Capture the code book and field radio.Take them to the allied beachhead.(Blue box)Axis keep them from doing this.";
	game["re_attackers_intro_text"] = "Capture the code book and field radio.Take them to the allied beachhead.(Blue box)";
	game["re_defenders_intro_text"] = "Defend the code book and field radio from allies.Keep them from the allied beachhead.(Blue box)";
	

    deletePlacedEntity("misc_turret");


}

deletePlacedEntity(sEntityType)
{
    eEntities = getEntArray(sEntityType, "classname");
    for(i = 0; i < eEntities.size; i++)
        eEntities[i] delete();
}