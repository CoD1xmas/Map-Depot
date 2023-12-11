main()
{
    thread alert_sound();

}

alert_sound()
{
	alerts = getentarray ("drip", "targetname");
	while (1)
	{
		
		{
			for (i=1;i<alerts.size;i++)
				alerts[0] playsound("drip");

			alerts[0] playsound("drip");
			
			wait (9);

     self thread alert_sound();

     return;
		}
		}
	}
