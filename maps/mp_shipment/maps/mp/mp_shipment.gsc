//mp_shipment 
//mystery	

main()
{
	setCullFog (0, 6000, .32, .36, .40, 0);
	ambientPlay("ambient_mp_depot");
	
	maps\mp\_load::main(); //Minefield
	//maps\mp\planes::main(); //Planes 

	game["allies"] = "american";
	game["axis"]  = "german";

	game["british_soldiertype"] = "airborne";
	game["british_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	//Bigone:
	level._effect["fire"] = loadfx ("fx/fire/extreme_butcool1.efx");
	maps\mp\_fx::loopfx("fire", (120, 2729.9, 447.7), 0.6);
	level._effect["smoke"] = loadfx ("fx/smoke/blacksmoke2.efx");
	maps\mp\_fx::loopfx("smoke", (120, 2729.9, 447.7), 0.7);

	//Fire1:
	level._effect["fire"] = loadfx ("fx/fire/tinybon.efx");
	maps\mp\_fx::loopfx("fire", (-16, 2728, 568), 0.7);
	//level._effect["smoke"] = loadfx ("fx/smoke/ash_smoke.efx");
	//maps\mp\_fx::loopfx("smoke", (-16, 2728, 568), 0.8);

	//Fire2:
	level._effect["fire"] = loadfx ("fx/fire/tinybon.efx");
	maps\mp\_fx::loopfx("fire", (128, 2800, 568), 0.6);
	//level._effect["smoke"] = loadfx ("fx/smoke/ash_smoke.efx");
	//maps\mp\_fx::loopfx("smoke", (128, 2800, 568), 0.7);


}
