main()
{
    thread alert_sound();

}

alert_sound()
{
	alerts = getentarray ("stream", "targetname");
	while (1)
	{
		
		{
			for (i=1;i<alerts.size;i++)
				alerts[0] playsound("stream");

			alerts[0] playsound("stream");
			
			wait (3);

     self thread alert_sound();

     return;
		}
		}
	}
