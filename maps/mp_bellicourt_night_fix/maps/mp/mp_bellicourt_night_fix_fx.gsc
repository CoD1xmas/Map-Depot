main()
{
	precacheFX();   
	start_fx();   
}

precacheFX()
{

    	level._effect["flakk"]	= loadfx("fx/explosions/flakkcannon_exploder.efx");
    	level._effect["tankburn"]	= loadfx("fx/fire/medfire.efx");
    	level._effect["smoke"]	= loadfx("fx/smoke/dawnville_smoke3.efx");
}

start_fx()
{
			maps\mp\_fx::loopfx("tankburn",(2224, -704, 86), 0.3);
			maps\mp\_fx::loopfx("smoke",(2224, -704, 48), 0.3);

			ent = getent("firesound","targetname");
			if (isdefined(ent))
				ent playloopsound ("bellicourt_fire");

}