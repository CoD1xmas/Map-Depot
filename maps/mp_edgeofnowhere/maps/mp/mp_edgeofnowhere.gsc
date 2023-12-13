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
    thread sound1();
    thread sound2();
    thread sound3();
    thread sound4();
    thread sound5();
    thread sound6();
    thread sound7();
    thread sound8();
    thread sound9();
    thread sound10();
    thread sound11();
    thread sound12();
    thread sound13();
    thread sound14();
    thread sound15();
    thread sound16();
    thread sound17();
    thread sound18();
    thread sound19();
    thread sound20();
    thread sound21();
    thread sound22();
    thread sound23();
    thread sound24();
    thread sound25();
    thread sound26();
    thread sound27();
    thread sound28();
    thread sound29();

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

sound1()
{
    alerts = getentarray ("fire", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("fire");

            alerts[0] playsound("fire");
            
            wait (3);

     self thread sound1();

     return;
        }
        }
    }

sound2()
{
    alerts = getentarray ("ocean", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("ocean");

            alerts[0] playsound("ocean");
            
            wait (4);

     self thread sound2();

     return;
        }
        }
    }

sound3()
{
    alerts = getentarray ("drip", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("drip");

            alerts[0] playsound("drip");
            
            wait (9);

     self thread sound3();

     return;
        }
        }
    }

sound4()
{
    alerts = getentarray ("forest", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("forest");

            alerts[0] playsound("forest");
            
            wait (7);

     self thread sound4();

     return;
        }
        }
    }

sound5()
{
    alerts = getentarray ("ocean1", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("ocean");

            alerts[0] playsound("ocean");
            
            wait (4);

     self thread sound5();

     return;
        }
        }
    }

sound6()
{
    alerts = getentarray ("ocean2", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("ocean");

            alerts[0] playsound("ocean");
            
            wait (4);

     self thread sound6();

     return;
        }
        }
    }

sound7()
{
    alerts = getentarray ("ocean3", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("ocean");

            alerts[0] playsound("ocean");
            
            wait (4);

     self thread sound7();

     return;
        }
        }
    }

sound8()
{
    alerts = getentarray ("ocean4", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("ocean");

            alerts[0] playsound("ocean");
            
            wait (4);

     self thread sound8();

     return;
        }
        }
    }

sound9()
{
    alerts = getentarray ("drip1", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("drip");

            alerts[0] playsound("drip");
            
            wait (9);

     self thread sound9();

     return;
        }
        }
    }

sound10()
{
    alerts = getentarray ("drip2", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("drip");

            alerts[0] playsound("drip");
            
            wait (9);

     self thread sound10();

     return;
        }
        }
    }

sound11()
{
    alerts = getentarray ("drip3", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("drip");

            alerts[0] playsound("drip");
            
            wait (9);

     self thread sound11();

     return;
        }
        }
    }

sound12()
{
    alerts = getentarray ("forest1", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("forest");

            alerts[0] playsound("forest");
            
            wait (6);

     self thread sound12();

     return;
        }
        }
    }

sound13()
{
    alerts = getentarray ("forest2", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("forest");

            alerts[0] playsound("forest");
            
            wait (6);

     self thread sound13();

     return;
        }
        }
    }

sound14()
{
    alerts = getentarray ("forest3", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("forest");

            alerts[0] playsound("forest");
            
            wait (6);

     self thread sound14();

     return;
        }
        }
    }

sound15()
{
    alerts = getentarray ("forest4", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("forest");

            alerts[0] playsound("forest");
            
            wait (6);

     self thread sound15();

     return;
        }
        }
    }

sound16()
{
    alerts = getentarray ("forest5", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("forest");

            alerts[0] playsound("forest");
            
            wait (6);

     self thread sound16();

     return;
        }
        }
    }

sound17()
{
    alerts = getentarray ("forest6", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("forest");

            alerts[0] playsound("forest");
            
            wait (6);

     self thread sound17();

     return;
        }
        }
    }

sound18()
{
    alerts = getentarray ("cliff", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound18();

     return;
        }
        }
    }

sound19()
{
    alerts = getentarray ("cliff1", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound19();

     return;
        }
        }
    }

sound20()
{
    alerts = getentarray ("cliff1", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound20();

     return;
        }
        }
    }

sound21()
{
    alerts = getentarray ("cliff2", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound21();

     return;
        }
        }
    }

sound22()
{
    alerts = getentarray ("cliff3", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound22();

     return;
        }
        }
    }

sound23()
{
    alerts = getentarray ("cliff4", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound23();

     return;
        }
        }
    }

sound24()
{
    alerts = getentarray ("cliff5", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound24();

     return;
        }
        }
    }

sound25()
{
    alerts = getentarray ("cliff6", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound25();

     return;
        }
        }
    }

sound26()
{
    alerts = getentarray ("cliff7", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound26();

     return;
        }
        }
    }

sound27()
{
    alerts = getentarray ("cliff8", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound27();

     return;
        }
        }
    }

sound28()
{
    alerts = getentarray ("cliff9", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("cliff");

            alerts[0] playsound("cliff");
            
            wait (8);

     self thread sound28();

     return;
        }
        }
    }

sound29()
{
    alerts = getentarray ("stream", "targetname");
    while (1)
    {
        
        {
            for (i=1;i<alerts.size;i++)
                alerts[0] playsound("stream");

            alerts[0] playsound("stream");
            
            wait (3);

     self thread sound29();

     return;
        }
        }
    }
