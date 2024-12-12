main()
{
	setCullFog (0, 13500, .32, .36, .40, 0);
	ambientPlay("ambient_mp_harbor");
	
	maps\mp\_load::main();
	
	thread precacheFX(); 
	thread cs_office_w1();
	thread cs_office_w2();
	thread cs_office_w3();
	thread cs_office_w4();
	thread cs_office_w5();
	thread cs_office_w6();
	thread cs_office_w7();
	thread cs_office_w8();
	thread cs_office_w9();
	thread cs_office_w10();
	thread cs_office_w11();
	thread cs_office_w12();
	thread cs_office_w13();
	thread cs_office_w14();
	thread cs_office_door();
	
	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "fallschirmjagergrey";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	

}

precacheFX()
{

	level._effect["tigertankexplosion"]	= loadfx("fx/explosions/explosion1_nolight.efx");
	level._effect["fueltank"]		= loadfx("fx/explosions/fueltank_ned.efx");
	level._effect["wood_close"]		= loadfx ("fx/cannon/wood_close.efx");
    	level._effect["wood"]			= loadfx ("fx/cannon/wood.efx");
    	level._effect["dust"]			= loadfx ("fx/cannon/dust.efx");
    	level._effect["dirt"]			= loadfx ("fx/cannon/dirt.efx");

}

cs_office_w1()
{
trig = getent("cs_office_w1_trig","targetname");
w = getent ("cs_office_w1","targetname");
o = getent("cs_office_w1_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w2()
{
trig = getent("cs_office_w2_trig","targetname");
w = getent ("cs_office_w2","targetname");
o = getent("cs_office_w2_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w3()
{
trig = getent("cs_office_w3_trig","targetname");
w = getent ("cs_office_w3","targetname");
o = getent("cs_office_w3_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w4()
{
trig = getent("cs_office_w4_trig","targetname");
w = getent ("cs_office_w4","targetname");
o = getent("cs_office_w4_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w5()
{
trig = getent("cs_office_w5_trig","targetname");
w = getent ("cs_office_w5","targetname");
o = getent("cs_office_w5_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w6()
{
trig = getent("cs_office_w6_trig","targetname");
w = getent ("cs_office_w6","targetname");
o = getent("cs_office_w6_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w7()
{
trig = getent("cs_office_w7_trig","targetname");
w = getent ("cs_office_w7","targetname");
o = getent("cs_office_w7_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w8()
{
trig = getent("cs_office_w8_trig","targetname");
w = getent ("cs_office_w8","targetname");
o = getent("cs_office_w8_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w9()
{
trig = getent("cs_office_w9_trig","targetname");
w = getent ("cs_office_w9","targetname");
o = getent("cs_office_w9_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w10()
{
trig = getent("cs_office_w10_trig","targetname");
w = getent ("cs_office_w10","targetname");
o = getent("cs_office_w10_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w11()
{
trig = getent("cs_office_w11_trig","targetname");
w = getent ("cs_office_w11","targetname");
o1 = getentarray("cs_office_w11_o","targetname");
o=o1[0];

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w12()
{
trig = getent("cs_office_w12_trig","targetname");
w = getent ("cs_office_w12","targetname");
o = getent("cs_office_w12_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w13()
{
trig = getent("cs_office_w13_trig","targetname");
w = getent ("cs_office_w13","targetname");
o = getent("cs_office_w13_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_w14()
{
trig = getent("cs_office_w14_trig","targetname");
w = getent ("cs_office_w14","targetname");
o = getent("cs_office_w14_o","targetname");

fx = loadfx("fx/impacts/glass_shatter.efx");
while (1)
{
trig waittill ("damage", idamage);
if(idamage > 1)
{
w moveZ (-1000, 0.01, 0, 0);
playfx(fx, o.origin);
w waittill ("movedone");
wait(10000);
}
}
}

cs_office_door()
{
d = getent ("cs_office_door","targetname");
s= getent ("cs_office_s","targetname");
trigger = getent ("cs_office_door_trig","targetname");
while(1)
{
trigger waittill ("trigger");
s playsound("cs_office_door");
d moveZ (104,2,0.5,0.5);
d waittill ("movedone");
wait(10000);
}
} 