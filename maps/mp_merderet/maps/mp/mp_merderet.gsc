
main()
{

	//Set up fog and level ambience
	setCullFog (0, 4150, .32, .36, .40, 0);
	ambientPlay("ambient_mp_brecourt");

	// set the nighttime flag to be off
	setcvar("sv_night", "0" );
	
	//Load map scripts and fx
	maps\mp\_load::main();
	maps\mp\mp_merderet_fx::main();

	//Precache models for loading
	//precacheModel("xmodel/gfm_kappe");
	precachemodel("xmodel/v_us_air_p47");

	
      	
	//Set up teams
	game["allies"] = "american";
	game["axis"] = "german";

	//Set up skins
	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "normal";

	//Set up attackers and defenders in S&D
	game["attackers"] = "axis";
	game["defenders"] = "allies";

	//Layout picture
	game["layoutimage"] = "mp_merderet";

	//Retrival settings
	level.obj["Field Radio"] = (&"RE_OBJ_FIELD_RADIO");
	game["re_attackers"] = "axis";
	game["re_defenders"] = "allies";
	game["re_attackers_obj_text"] = "Capture the field radio";
	game["re_defenders_obj_text"] = "Defend the field radio";
	game["re_spectator_obj_text"] = "Axis: Capture the field radio\nAllies: Defend the field radio";
	game["re_attackers_intro_text"] = (&"RE_OBJ_DAWNVILLE_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_DAWNVILLE_SPAWN_DEFENDER");


	//Level effects
level._effect["smoke1"] = loadfx ("fx/smoke/neuville_smoke1.efx");
	maps\mp\_fx::loopfx("smoke1", (-2220, -580, 84), 0.5);

//level._effect["smoke2"] = loadfx ("fx/smoke/dawnville_smoke1.efx");
	//maps\mp\_fx::loopfx("smoke2", (496, -168, 44), 0.5);

level._effect["smoke3"] = loadfx ("fx/smoke/neuville_smoke1.efx");
	maps\mp\_fx::loopfx("smoke3", (880, -252, 12), 0.5);

level._effect["churchsmoke"] = loadfx ("fx/smoke/neuville_smoke1.efx");
	maps\mp\_fx::loopfx("churchsmoke", (-516, -908, 8), 0.5);





	
level thread Random_Plane_FlyBy();

thread killzone();
}



killzone()
{

	while(1)
	{
		players = getentarray("player", "classname");
		for(i=0;i<players.size;i++)
		{
			if(players[i].sessionstate == "playing" && isalive(players[i]) &&  ( ( (int)players[i].origin[2] <= -176 && (int)players[i].origin[1] >= 2450 ) || (int)players[i].origin[2] <= -176 && (int)players[i].origin[1] <= -2600 ) )
			{
			
			iprintln(players[i].name + " swam too far and drowned.");
			players[i] suicide();
			}
		}
		wait 0.1;
	}

}










#using_animtree ("stuka");

Random_Plane_FlyBy()
{
	path_start = [];
	path_end = [];
	path_start[0] = (-2568, 7592, 976);
	path_end[0] = (-1928, -7192, 1008);
	path_snd_delay[0] = 1;
	path_start[1] = (-2512, 7912, 976);
	path_end[1] = (-1840, -7320, 1008);
	path_snd_delay[1] = 0;

//Time = Distance / Speed
//
//Distance = Time * Speed
//
//Speed = Distance / Time
	wait (60 + randomint(90));

	level.plane_flybys = 1;
	while(1)
	{
		// Choose Random Path
		random_path = randomint(path_start.size);
		the_path_start = path_start[random_path];
		the_path_end = path_end[random_path];

		side = randomint(2);

		if(side == 1)
		{
			startpos = the_path_start;
			endpos = the_path_end;
		}
		else
		{
			startpos = the_path_end;
			endpos = the_path_start;
		}

		sound_delay = path_snd_delay[random_path];

		speed = (3000  + randomint(750));
		dist = distance(startpos,endpos);
	
		time = (dist / speed);

		num_of_planes = 1 + randomint(2);
		println("num_of_planes ", num_of_planes);
		for(i=0;i<num_of_planes;i++)
		{
			level.plane_flybys--;
			random_x = (startpos[0] - 256) + randomfloat(512);
			random_y = (startpos[1] - 256) + randomfloat(512);
			random_z = (startpos[2] - 128) + randomfloat(256);
			offset = (random_x, random_y, random_z);

//			println("OFFSET = ",offset);



			plane = spawn("script_model", offset);
			plane setmodel("xmodel/v_us_air_p47");
			plane thread Plane_Move(sound_delay,startpos,endpos,time);
			wait (0.5 + randomfloat(2));
		}

//		println("PLANE GROUPS : ",level.plane_flybys);

		while(level.plane_flybys <= 0)
		{
			wait 1;
		}

		wait (60 + randomint(90));
	}
}

do_line()
{
	self endon("death");
	while(1)
	{
		line(self.origin, (0,0,0),(1,1,1));
		print3d((self.origin + (0,0,50)), self.angles, (1,1,1));
		wait 0.05;
	}
}

Plane_Move(sound_delay,startpos,endpos,time)
{
	self thread Plane_Sound(sound_delay);
wait 2;
	self moveto(endpos, time, 0, 0);
	self.angles = vectortoangles (endpos - startpos);
	self thread Plane_Rotate();
	

	self waittill("movedone");
	level.plane_flybys++;
	self delete();
}

Plane_Sound(sound_delay)
{
	org = spawn("script_model",(0,0,0));
//	org thread do_line2();
	org SetContents(0);
	wait 0.1;
	random_num = randomint(2);
	if(random_num == 0)
	{
		alias = "mustang_attack01";
		sound_wait = .1;
	}
	else
	{
		alias = "mustang_attack01";
		sound_wait = .1;
	}

	if(isdefined(sound_delay))
	{
		wait sound_delay;
	}

	println("^5Playing Sound ",alias);
	org playsound (alias);
	wait sound_wait;
	println("DELETE!");
	org delete();

}

Plane_Rotate()
{
//	self thread do_line();
	self endon("death");
	og_angles = self.angles;

	while(1)
	{
		random_x = og_angles[2] + (-15 + randomfloat(30));
		random_y = og_angles[0] + (-5 + randomfloat(10));
		random_time = 2 + randomfloat(5);
//		offset = (random_x, random_y, random_z);
		offset = (random_y, og_angles[1], random_x);
//		println("ANGLES: ",offset);

		self rotateto(offset, random_time, 0.5, 0.5);
		self waittill("rotatedone");
	}
}

Fix_Objects()
{
	//Remove Shermans
	models=getEntArray("script_vehicle","classname");
	for (i=0;i<models.size;i++)
	{
		if(models[i].model == "xmodel/mp_vehicle_gfm_sherman" )
			models[i] delete();
	}
	wait .1;
	
	//Remove Marder
	models=getEntArray("misc_model","classname");
	for (i=0;i<models.size;i++)
	{
		if(models[i].model == "xmodel/marder2_s_d" )
			models[i] delete();
	}
	wait .1;

}

