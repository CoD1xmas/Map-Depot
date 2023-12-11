main()
{
    thread alert_sound();

}

alert_sound()
{
	alerts = getentarray ("forest", "targetname");
	while (1)
	{
		
		{
			for (i=1;i<alerts.size;i++)
				alerts[0] playsound("forest");

			alerts[0] playsound("forest");
			
			wait (7);

     self thread alert_sound();

     return;
		}
		}
	}
