main()
{

level._effect["fire"] = loadfx ("fx/fire/barrelfire.efx");
maps\mp\_fx::loopfx("fire", (75, -944, 24), 0.6);
level._effect["smoke"] = loadfx ("fx/smoke/ash_smoke.efx");
maps\mp\_fx::loopfx("smoke", (75, -944, 24), 0.7);

}