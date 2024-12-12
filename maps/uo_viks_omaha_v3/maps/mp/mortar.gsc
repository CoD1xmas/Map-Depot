main()
{
	

	
	// Specify two different explosion effects to randomly play
	level._effect["mortar_explosion"][0] = loadfx ("fx/impacts/newimps/dirthit_mortar2day.efx");
	level._effect["mortar_explosion"][1] = loadfx ("fx/impacts/newimps/minefield.efx");
	
	// Start the mortars commin down!
	level thread mortars();
}	

mortars()
{
	// Get an array of all the mortars in the level
	mortar = getentarray ("mortar","targetname");
	// Loop over and over while the level is loaded
	while (1)
	{
	// Wait 5-10 seconds randomly before doing a mortar explosion
	wait (5 + randomfloat(5));
		
	// Make sure there are no players close enough to this mortar to kill them
	GoodPosition = false;
	while (!GoodPosition)
	{
	// Pick a random mortar location
	rand = randomint(mortar.size);
			
	// Check if any players are within 200 of the randomly picked mortar
	GoodPosition = true;
	players = getentarray("player", "classname");
	for(i = 0; i < players.size; i++)
	{
	if (distance(mortar[rand].origin,players[i].origin) < 200)
	{
	GoodPosition = false;
	break;
	}
	}
	}
		
	// Play the incomming mortar sound effect
	mortar[rand] playsound("mortar_incoming");
		
	// Wait 2 seconds while the imcomming sound plays
	wait 2;
		
	// Do the explosion effect
	origin = mortar[rand] getorigin();
	playfx (level._effect["mortar_explosion"][randomint(2)], origin);
		
	// Play the explosion sound
	mortar[rand] playsound("mortar_explosion");
		
	// Make the explosion cause damage
	radiusDamage(mortar[rand].origin, 300, 2000, 50);
}
}

