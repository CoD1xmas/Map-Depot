main() 
{
    maps\mp\_load::main();

//    setExpFog(0.00001, 0, 0, 0, 0);
//    ambientPlay(""); 

    game["allies"] = "american";
    game["axis"] = "german";

    game["russian_soldiertype"] = "conscript";
    game["russian_soldiervariation"] = "normal";
    game["german_soldiertype"] = "wehrmacht";
    game["german_soldiervariation"] = "normal";

    game["attackers"] = "axis";
    game["defenders"] = "allies";

}