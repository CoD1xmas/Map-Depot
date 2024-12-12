main()
{
	precacheFX();   
}

precacheFX()
{
	level._effect["antitankgunexplosion"]	= loadfx("fx/explosions/explosion1_nolight.efx");
	level._effect["fire"] = loadfx ("fx/fire/barrelfire.efx");
maps\mp\_fx::loopfx("fire", (1226, 1444, 4), 0.2);  
level._effect["smoke"] = loadfx ("fx/smoke/ash_smoke.efx");
maps\mp\_fx::loopfx("smoke", (1226, 1444, 4), 0.2);    
	level._effect["fire"] = loadfx ("fx/fire/barrelfire.efx");
maps\mp\_fx::loopfx("fire", (270, 1864, 173), 0.2);  
level._effect["smoke"] = loadfx ("fx/smoke/ash_smoke.efx");
maps\mp\_fx::loopfx("smoke", (270, 1864, 173), 0.2);  
	level._effect["doorexpl1"]			= loadfx ("fx/impacts/coolaidmanbrick.efx");
}



