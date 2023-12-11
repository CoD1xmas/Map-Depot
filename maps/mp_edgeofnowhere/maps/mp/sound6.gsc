main()
{
    thread alert_sound();

}

alert_sound()
{
	alerts = getentarray ("ocean2", "targetname");
	while (1)
	{
		
		{
			for (i=1;i<alerts.size;i++)
				alerts[0] playsound("ocean");

			alerts[0] playsound("ocean");
			
			wait (4);

     self thread alert_sound();

     return;
		}
		}
	}
