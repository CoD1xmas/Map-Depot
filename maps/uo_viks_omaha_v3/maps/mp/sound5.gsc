main()
{
    thread alert_sound();

}

alert_sound()
{
	alerts = getentarray ("motor3", "targetname");
	while (1)
	{
		
		{
			for (i=1;i<alerts.size;i++)
				alerts[0] playloopsound("block");

			alerts[0] playloopsound("block");
			
			wait (3);

     self thread alert_sound();

     return;
		}
		}
	}
