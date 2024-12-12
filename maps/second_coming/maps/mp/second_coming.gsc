
main()

{

	setCullFog (1000, 4000, .32, .36, .40, 0);
	ambientPlay("ambient_mp_carentan");
	
	maps\mp\_load::main();
	maps\mp\scsound::main();
	maps\mp\second_coming_fx::main();

	
	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "fallschirmjagergrey";
	game["german_soldiervariation"] = "normal";
	game["attackers"] = "allies";
	game["defenders"] = "axis";
	game["re_attackers"] = "axis";
	game["re_defenders"] = "allies";

	game["layoutimage"] = "second_coming";

level.obj["document_1"] ="Field radio";
level.obj["document_2"] ="General's diary";
game["re_attackers"] = "axis";
game["re_defenders"] = "allies";
game["re_attackers_obj_text"] = "Steal both the General's diary and the radio - and bring me back a few yankee helmets too. Schnell!";
game["re_defenders_obj_text"] = "It's your ass if the krauts even TOUCH our gear, soldier! Move it!";
game["re_spectator_obj_text"] = "Axis: Return the items to the truck.\nAllies: Defend the objectives at all costs.";


}


