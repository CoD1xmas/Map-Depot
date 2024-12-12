main()
{
Feu1();
Feu2();
Feu3();
Feu4();
Feu5();
Fumee1();
Fumee2();
Fumee3();
Fumee4();
Fumee5();
Smoke();
}

Feu1()
{
 level._effect["feu1"] = loadfx ("fx/fire/tinybon2.efx");
 org = getent ("feu1","targetname"); 
 maps\mp\_fx::loopfx("feu1", org.origin, 1); 
}

Feu2()
{
 level._effect["feu2"] = loadfx ("fx/fire/tinybon2.efx");
 org = getent ("feu2","targetname"); 
 maps\mp\_fx::loopfx("feu2", org.origin, 1); 
}

Feu3()
{
 level._effect["feu3"] = loadfx ("fx/fire/tinybon2.efx");
 org = getent ("feu3","targetname"); 
 maps\mp\_fx::loopfx("feu3", org.origin, 1); 
}
Feu4()
{
level._effect["feu4"] = loadfx ("fx/fire/tinybon2.efx");
 org = getent ("feu4","targetname"); 
 maps\mp\_fx::loopfx("feu4", org.origin, 1);
}
Feu5()
{
level._effect["feu5"] = loadfx ("fx/fire/tinybon2.efx");
 org = getent ("feu5","targetname"); 
 maps\mp\_fx::loopfx("feu5", org.origin, 1);
}


Fumee1()
{
level._effect["fumee1"] 	= loadfx ("fx/smoke/chimneysmoke.efx");
 org = getent ("fumee1","targetname"); 
 maps\mp\_fx::loopfx("fumee1", org.origin, 1);
}

Fumee2()
{
level._effect["fumee2"] 	= loadfx ("fx/smoke/chimneysmoke.efx");
 org = getent ("fumee2","targetname"); 
 maps\mp\_fx::loopfx("fumee2", org.origin, 1);
}

Fumee3()
{
level._effect["fumee3"] 	= loadfx ("fx/smoke/chimneysmoke.efx");
 org = getent ("fumee3","targetname"); 
 maps\mp\_fx::loopfx("fumee3", org.origin, 1);
}

Fumee4()
{
level._effect["fumee4"] 	= loadfx ("fx/smoke/chimneysmoke.efx");
 org = getent ("fumee4","targetname"); 
 maps\mp\_fx::loopfx("fumee4", org.origin, 1);
}
Fumee5()
{
level._effect["fumee5"] 	= loadfx ("fx/smoke/chimneysmoke.efx");
 org = getent ("fumee5","targetname"); 
 maps\mp\_fx::loopfx("fumee5", org.origin, 1);
}
Smoke()
{
level._effect["smoke"] 	= loadfx ("fx/smoke/dawnville_smoke2.efx");
 org = getent ("smoke","targetname"); 
 maps\mp\_fx::loopfx("smoke", org.origin, 1);
}
