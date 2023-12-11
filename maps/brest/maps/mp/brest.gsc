main()
{
setCullFog (0, 7500, .32, .36, .40, 0);
ambientPlay("ambient_mp_hurtgen");

maps\mp\_load::main();


game["allies"] = "american";
game["axis"] = "german";

game["american_soldiertype"] = "airborne";
game["american_soldiervariation"] = "normal";
game["german_soldiertype"] = "wehrmacht";
game["german_soldiervariation"] = "normal";

game["attackers"] = "axis";
game["defenders"] = "allies";

game["layoutimage"] = "mp_mymap";
}
