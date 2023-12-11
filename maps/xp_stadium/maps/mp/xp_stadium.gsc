/*
		Be an eagle.
		 Go higher.
	https://youtu.be/vZKUSg-yaBw
									*/

// Map was created by Expert, 2023.
// Song used in map: "Nobody's Watching" by Hollywood Undead.
main() 
{

	maps\mp\_load::main();

	thread red_teleporter();
	thread green_teleporter();
	thread ufo_teleporter();
	thread platform();
	
//	setCullFog (0, 0, 0, 0, 0, 0);
	ambientPlay("amb_stadium"); 

	game["allies"] = "american";
	game["axis"] = "german";

	game["russian_soldiertype"] = "conscript";
	game["russian_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "";

}
//end of main


//	Functions

red_teleporter()
{
	trig = getent("red_trigger","targetname");
	tele = getent("red_tele","targetname");
	while(1)
	{
		trig waittill ("trigger",user);
		user setOrigin(tele.origin);
		wait (.2);
	}
}

green_teleporter()
{
	trig = getent("green_trigger","targetname");
	tele = getent("green_tele","targetname");
	while(1)
	{
		trig waittill ("trigger",user);
		user setOrigin(tele.origin);
		wait (.2);
	}
}

ufo_teleporter()
{
	trig = getent("ufo_trigger","targetname");
	tele = getent("ufo_tele","targetname");
	while(1)
	{
		trig waittill ("trigger",user);
		user setOrigin(tele.origin);
		wait (.2);
	}
}

platform()
{
	plat = getent("platform","targetname");
	
	while(1)
	{
		plat rotateyaw ( 360, 25);
		wait(25.1);
	}
}