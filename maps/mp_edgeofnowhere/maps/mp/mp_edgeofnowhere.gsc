main()
{
level._effect["fire"] = loadfx ("fx/fire/tinybon.efx");
maps\mp\_fx::loopfx("fire", (-384.0, -920.0, 56.0), 0.6);
level._effect["smoke"] = loadfx ("fx/smoke/ash_smoke.efx");
maps\mp\_fx::loopfx("smoke", (-384.0, -920.0, 336), 0.7);

maps\mp\_load::main();

	setCullFog (0, 6000, 0.8, 0.8, 0.8, 0);
	ambientPlay("ambient_eon");

	maps\mp\_load::main();
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
        maps\mp\sound12::main();
        maps\mp\sound13::main();
        maps\mp\sound14::main();
        maps\mp\sound15::main();
        maps\mp\sound16::main();
        maps\mp\sound17::main();
        maps\mp\sound18::main();
        maps\mp\sound19::main();
        maps\mp\sound20::main();
        maps\mp\sound21::main();
        maps\mp\sound22::main();
        maps\mp\sound23::main();
        maps\mp\sound24::main();
        maps\mp\sound25::main();
        maps\mp\sound26::main();
        maps\mp\sound27::main();
        maps\mp\sound28::main();
        maps\mp\sound29::main();

	maps\mp\mp_dawnville_fx::main();
	
	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "fallschirmjagercamo";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_edgeofnowhere";

}
