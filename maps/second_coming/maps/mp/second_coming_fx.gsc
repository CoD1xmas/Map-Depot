main()
{
	precacheFX();   
}

precacheFX()
{

	level._effect["tigertankexplosion"]	= loadfx("fx/explosions/explosion1_nolight.efx");
	level._effect["wood_close"]	= loadfx ("fx/cannon/wood_close.efx");
	level._effect["dust"]	= loadfx ("fx/cannon/dust.efx");
}
