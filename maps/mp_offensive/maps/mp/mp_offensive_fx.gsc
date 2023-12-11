main()
{
	level._effect["smoke"] 			= loadfx ("fx/smoke/ash_smoke.efx");
	level._effect["smoke2"]			= loadfx ("fx/smoke/firesmoke_col2.efx");
    	level._effect["smoke3"]			= loadfx ("fx/smoke/firesmoke_col1.efx");
	level._effect["chimney"] 		= loadfx ("fx/smoke/chimneysmoke.efx");

	maps\mp\_fx::loopfx("chimney", (56, 1024, 288), 0.6);
	maps\mp\_fx::loopfx("chimney", (616, 1424, 312), 0.7);
	maps\mp\_fx::loopfx("smoke", (1624, 2035, 352), 0.8);
	maps\mp\_fx::loopfx("chimney", (120, 3235, 464), 0.4);
	maps\mp\_fx::loopfx("smoke", (1310, 2845, 487), 0.9);
	maps\mp\_fx::loopfx("chimney", (1177, 60, 241), 1.0);
	maps\mp\_fx::loopfx("smoke", (-352, 1234, 486), 0.7);
	maps\mp\_fx::loopfx("chimney", (-160, 2768, 457), 0.8);
	maps\mp\_fx::loopfx("smoke", (674, 2845, 438), 0.9);
	maps\mp\_fx::loopfx("smoke", (938, 321, 420), 0.7);
	maps\mp\_fx::loopfx("chimney", (1573, 835, 481), 0.9);
	maps\mp\_fx::loopfx("smoke", (1637, 1688, 488), 0.8);
	maps\mp\_fx::loopfx("smoke", (2137, 2545, 490), 0.7);
	maps\mp\_fx::loopfx("chimney", (2134, 2884, 491), 0.9);
	maps\mp\_fx::loopfx("smoke", (1625, 2410, 351), 0.6);
	maps\mp\_fx::loopfx("smoke", (917, 2848, 487), 0.8);
	maps\mp\_fx::loopfx("chimney", (417, 1889, 487), 0.7);

	maps\mp\_fx::loopfx("smoke2", (2736, -646, 755), 0.6); //cheminée usine simple
	maps\mp\_fx::loopfx("smoke2", (-1160, -2039, 749), 0.5); //cheminée usine double 1
	maps\mp\_fx::loopfx("smoke3", (-1159, -2239, 746), 0.6); //cheminée usine double 2

	maps\mp\_load::main();
}

