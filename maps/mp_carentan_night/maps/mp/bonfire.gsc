main()
{

level._effect["fire"] = loadfx ("fx/fire/medfire.efx");
maps\mp\_fx::loopfx("fire", (-2832, -1096, -8), 0.6);
level._effect["smoke"] = loadfx ("fx/smoke/ash_smoke.efx");
maps\mp\_fx::loopfx("smoke", (-2832, -1096, -8), 0.7);

}

