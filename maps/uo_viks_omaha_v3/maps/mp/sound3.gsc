main()
{
    thread alert_sound();

}

alert_sound()
{
	alerts = getentarray ("cliff", "targetname");
	while (1)
	{
		
		{
			for (i=1;i<alerts.size;i++)
				alerts[0] playloopsound("leaf");

			alerts[0] playloopsound("leaf");
			
			wait (7);

     self thread alert_sound();

     return;
		}
		}
	}
