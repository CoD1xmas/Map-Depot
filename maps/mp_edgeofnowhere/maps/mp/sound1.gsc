main()
{
    thread alert_sound();

}

alert_sound()
{
	alerts = getentarray ("fire", "targetname");
	while (1)
	{
		
		{
			for (i=1;i<alerts.size;i++)
				alerts[0] playsound("fire");

			alerts[0] playsound("fire");
			
			wait (3);

     self thread alert_sound();

     return;
		}
		}
	}
