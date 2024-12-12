main()
{
    thread alert_sound();

}

alert_sound()
{
	alerts = getentarray ("dieing", "targetname");
	while (1)
	{
		
		{
			for (i=1;i<alerts.size;i++)
				alerts[0] playloopsound("ocean");

			alerts[0] playloopsound("tank");
			
			wait (15);

     self thread alert_sound();

     return;
		}
		}
	}
