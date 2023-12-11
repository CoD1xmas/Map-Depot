main()
{
    thread alert_sound();

}

alert_sound()
{
	alerts = getentarray ("cliff8", "targetname");
	while (1)
	{
		
		{
			for (i=1;i<alerts.size;i++)
				alerts[0] playsound("cliff");

			alerts[0] playsound("cliff");
			
			wait (8);

     self thread alert_sound();

     return;
		}
		}
	}
