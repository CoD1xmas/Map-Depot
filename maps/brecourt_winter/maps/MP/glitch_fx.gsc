/////////////////////////////////////////
///////////|OCG|=gLiTcH=/////////////////
////////http://ocgamers.net//////////////
/////////////////////////////////////////

main()
{
    precacheFX();
    spawnWorldFX(); 
}

precacheFX()

{
//cottage   
    level._effect["chimsmoke"] = loadfx ("fx/smoke/chimneysmoke.efx");
    level._effect["chimsmoke1"] = loadfx ("fx/smoke/chimneysmoke.efx");

//well
    level._effect["wellsteam"] = loadfx ("glitchfx/glitch_steam.efx");

}

spawnWorldFX()

{

//cottage
     maps\mp\_fx::loopfx("chimsmoke", (-3350, 2006, 260), 0.4);
     maps\mp\_fx::loopfx("chimsmoke1", (-3221, 2006, 260), 0.4);

//well
     maps\mp\_fx::loopfx("wellsteam", (-1920, -1363, 30), 0.8);

}






