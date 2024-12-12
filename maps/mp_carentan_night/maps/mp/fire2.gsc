main()
{

level._effect["fire"] = loadfx ("fx/fire/barrelfire.efx");
maps\mp\_fx::loopfx("fire", (-2360, -1352, 16), 0.6);
level._effect["smoke"] = loadfx ("fx/smoke/ash_smoke.efx");
maps\mp\_fx::loopfx("smoke", (-2360, -1352, 16), 0.7);

}