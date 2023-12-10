//Script by ViezeOudeMan

main(){	
	maps\mp\_load::main();
	
	//level settings
	game["allies"] = "russian";
	game["axis"] = "german";
	game["russian_soldiertype"] = "veteran";
	game["russian_soldiervariation"] = "winter";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "winter";
	setCullFog (1000, 4000, .2, .3, .5, 0);
	ambientPlay("rudeXmasSong");

	//precache
	precacheShader("textures/viezeoudeman/V_santaApproves.tga");
	precacheShader("textures/viezeoudeman/bsod.tga");
	precacheShader("black");
	precacheModel("xmodel/toilet");
	//fx and sounds
	level._effect["fire"] = loadfx ("fx/fire/barrelfire.efx");
	level._effect["smoke"] = loadfx ("fx/smoke/ash_smoke.efx");
	level._effect["explosion"] = loadfx ("fx/smoke/flakkcannon_exploder.efx");
	maps\mp\_fx::loopfx("fire", (-1152, 31816, -1495), 0.2);
	maps\mp\_fx::loopfx("smoke", (-1152, 31816, -1170), 0.5);
	entranceLights = getentarray ("entranceLight","targetname");
	level._effect["red"] = loadfx ("fx/viezeoudeman/red.efx");
	level._effect["green"] = loadfx ("fx/viezeoudeman/green.efx");
	level._effect["blue"] = loadfx ("fx/viezeoudeman/blue.efx");
	level._effect["yellow"] = loadfx ("fx/viezeoudeman/yellow.efx");
	for(i = 0; i < entranceLights.size; i++){
		thread redGreenBlueYellow(entranceLights[i], 0.5, i%4); // 3 seconds life in .efx file
	}
	//variables
	level.frostySong = false;
	level.isFrostyHurt = false;
	level.isFrostyLockedOnPlayer = false;
	//threads
	
	pillarMedium1 = getentArray("pillarMedium1","targetname");
	for(i = 0; i < pillarMedium1.size; i++){
		thread rotatePillar(pillarMedium1[i], -720, 8);
	}
	pillarMedium2 = getentArray("pillarMedium2","targetname");
	for(i = 0; i < pillarMedium2.size; i++){
		thread rotatePillar(pillarMedium2[i], 720, 8);
	}
	pillarMedium3 = getentArray("pillarMedium3","targetname");
	for(i = 0; i < pillarMedium3.size; i++){
		thread rotatePillar(pillarMedium3[i], -720, 8);
	}
	pillarMedium4 = getentArray("pillarMedium4","targetname");
	for(i = 0; i < pillarMedium4.size; i++){
		thread rotatePillar(pillarMedium4[i], 720, 8);
	}
	pillarLarge1 = getentArray("pillarLarge1","targetname");
	for(i = 0; i < pillarLarge1.size; i++){
		thread rotatePillar(pillarLarge1[i], 360, 8);
	}
	
	thread musicFrosty();
	thread yellowSnow();
	thread television();
	thread door(getent ("cabinDoor1","targetname"), getent("cabinDoor1Trigger","targetname"), -90);
	thread door(getent ("cabinDoor2","targetname"), getent("cabinDoor2Trigger","targetname"), -90);
	thread door(getent ("cabinDoor3","targetname"), getent("cabinDoor3Trigger","targetname"), -90);
	thread moveTrain(getEntArray("train", "targetname"), getent("trainTrigger","targetname"), getent("trainKillTrigger","targetname"));
	thread present(getent ("present","targetname"), getent("presentTrigger","targetname"));
	
	/*
	redTunnels = getentarray ("redTunnel","targetname");
	for(i = 0; i < redTunnels.size; i++){
		thread rotateTunnel(redTunnels[i], 1080);
	}
	greenTunnels = getentarray ("greenTunnel","targetname");
	for(i = 0; i < greenTunnels.size; i++){
		thread rotateTunnel(greenTunnels[i], -1080);
	}
	*/
	thread teleport(getent ("room1teleport1" ,"targetname"), (-768,7296,384));
	thread teleport(getent ("room1teleport2" ,"targetname"), (-256,7296,384));
	thread teleport(getent ("room1teleport3" ,"targetname"), (256,7296,384));
	thread teleport(getent ("room1teleport4" ,"targetname"), (768,7296,384));
	thread teleport(getent ("room1teleport5" ,"targetname"), (-768,7296,832));
	thread teleport(getent ("room1teleport6" ,"targetname"), (-256,7296,832));
	thread teleport(getent ("room1teleport7" ,"targetname"), (256,7296,832));
	thread teleport(getent ("room1teleport8" ,"targetname"), (768,7296,832));
	thread teleport(getent ("room2teleport1" ,"targetname"), (-896,14976,192));
	thread teleport(getent ("room2teleport2" ,"targetname"), (-640,14976,192));
	thread teleport(getent ("room2teleport3" ,"targetname"), (-384,14976,192));
	thread teleport(getent ("room2teleport4" ,"targetname"), (-128,14976,192));
	thread teleport(getent ("room2teleport5" ,"targetname"), (128,14976,192));
	thread teleport(getent ("room2teleport6" ,"targetname"), (384,14976,192));
	thread teleport(getent ("room2teleport7" ,"targetname"), (640,14976,192));
	thread teleport(getent ("room2teleport8" ,"targetname"), (896,14976,192));
	thread teleport(getent("teleportTrigger", "targetname"), (128, 27200, 1344));
	thread race(getent("startGate", "targetname"), getent("startTrigger", "targetname"));
	/*
	//test function to measure speed
	wait(2);
	players = getEntArray("player", "classname");
		for(i = 0; i < players.size; i++){
			players[i] thread measure();
		}
	*/
}

/*
measure(){	
	beginPosition = self.origin;
	endPosition = self.origin;
	
	previousPosition = (self.origin);
	Position = (self.origin);
	
	time = 2;
	self iprintln(self GetEntityNumber());
	
	hud = newClientHudElem(self);
	hud.x = 320;
	hud.y = 240;
	
	while(1){

		wait(time);
		Position = (self.origin);
		hud setvalue(distance(Position, previousPosition)/(time));
		previousPosition = Position;
		
	}
}*/

race(gate, trigger){
	while(1){
		trigger waittill("trigger", user);
		
		players = getEntArray("player", "classname");
		for(i = 0; i < players.size; i++){
			if(players[i].origin[1] < 270){
				players[i] iprintln("A race will start in 10 seconds, get ready.");
			}
		}
		
		gate movez(320, 2);
		wait(10);
		gate movez(-320, 2);
		wait(10);
	}
	
}

teleport(trigger, coordinates){
	while(1){
		trigger waittill("trigger", user);
		user setOrigin(coordinates);
	}
}

present(presentBoxTop, trigger){
	while(1){
		trigger waittill("trigger", user);
		n = randomIntRange(1, 8);
		presentBoxTop rotateroll(-60,2);
		presentBoxTop waittill("rotatedone");
		
		switch(n){
			case 1:	
				wait(1);
				user playlocalsound("bsod");
				thread colorfade("textures/viezeoudeman/bsod.tga", 0, 0, 0, 0, 640, 480, 1, 1, 1, 1, 5, 1, user);
				wait(7);
				user playlocalsound("silence");
				break;
			case 2:	
				user iprintlnbold("Congatulations!");
				user setModel( "xmodel/toilet" );
				wait(2);
				user iprintlnbold("You are now a toilet.");
				break;
			case 3:
				user setplayerangles((0,0,180));
				break;
			case 4:
				user iprintlnbold("You will explode in 5 seconds!");
				user playsound("BombPlanted");
				user thread noLoading();
				wait(5);
				if(isalive(user)){
					RadiusDamage(user.origin, 500, 150, 5);
					user playsound("explosion");
					maps\mp\_fx::OneShotfx("explosion", user.origin, 0.05);
					Earthquake( 0.5, 2, user.origin, 700);
				}				
				break;
			case 5:	
				user iprintlnbold("You are on the naughty list!");
				user setOrigin((192,29152,-1550));
				break;
			case 6:
				user iprintlnbold("Frosty would like some private time with you.");
				wait(2);
				user setOrigin((0,30208,-2944));
				wait(5);
				thread colorfade("black", 0, 0, 0, 0, 640, 480, 1, 1, 1, 1, 6, 1, user);
				wait(1);
				user playlocalsound("zipper");
				wait(2.5);
				user playsound("Scream");
				wait(3);
				user suicide();
				break;
			case 7:	
				user iprintlnbold("You won't get jack shit this year mate.");
				wait(1);
				user suicide();
				break;
			default:
				break;
		}
	presentBoxTop rotateroll(60,1);
	presentBoxTop waittill("rotatedone");	
	}	
}

noLoading(){
	for(i = 0; i <100; i++){
		if(self usebuttonpressed()){
			self iprintlnbold("No loading while exploding :-)");
			self suicide();
		}
		wait(0.05);
	}
}


moveTrain(train, trigger, killTrigger){
	wait(0.05);
	killTrigger enableLinkTo();
	killTrigger linkTo(train[0]);

	while(1){
		trigger waittill("trigger", user);
		user playlocalsound("trainHorn");
		for(i = 0; i < train.size; i++){
			train[i] movey(-8000,0.8);
		}
		train[0] waittill("movedone");
		
		for(i = 0; i < train.size; i++){
			train[i] movey(8000,0.05);
		}
		train[0] waittill("movedone");
	}
}



door(door, trigger, degrees){
	while(1){
		trigger waittill("trigger", user);
		door Rotateyaw(degrees, 1);
		door waittill("rotatedone");
		trigger waittill("trigger", user);
		door Rotateyaw(-1*degrees, 1);
		door waittill("rotatedone");
	}
}

television(){
	television1 = getent ("television1","targetname");
	television2 = getent ("television2","targetname");
	television3 = getent ("television3","targetname");
	television2 hide();
	television3 hide();
	trigger = getent ("televisionTrigger","targetname");
	channel = 1;
	while(1){
		trigger waittill("trigger", user);	
		switch(channel){
			case 1:	
				television1 hide();
				television2 show();
				channel++;
				break;
			case 2:	
				television2 hide();
				television3 show();
				channel++;
				break;
			case 3:	
				television1 show();
				television3 hide();
				channel = 1;
				break;
			default:
				break;
		}
	}
}

rotateTunnel(tunnel, degrees){
	while(1){
		tunnel Rotatepitch(degrees, 16);
		tunnel waittill("rotatedone");
	}	
}

rotatePillar(pillar, degrees, time){
	while(1){
		pillar Rotateyaw(degrees,time);
		pillar waittill("rotatedone");
	}	
}

yellowSnow(){
	trigger = getent ("yellowSnowTrigger","targetname");
	while(1){
		trigger waittill("trigger", user);	
		players = getEntArray("player", "classname");
		
		for(i = 0; i < players.size; i++){
			if(players[i].name == user.name){
				if(!isdefined(players[i].eatSnow)){
				players[i].eatSnow = 1;
				} else{
					players[i].eatSnow++;
				}
				switch(players[i].eatSnow){
					case 1:	
						user iprintlnbold("The yellow snow tastes funny.");
						break;
					case 2:
						user iprintlnbold("Lets try again.");
						wait(1);
						user playsound("cough" + randomIntRange(1, 4));
						break;
					case 3:
						user iprintlnbold("WOW!");
						wait(1);
						user iprintlnbold("You gained 50 IQ!!!");
						wait(1);
						user playsound("cough" + randomIntRange(1, 4));
						break;
					case 4:
						user iprintlnbold("Santa will be proud!");
						wait(1);
						thread colorfade("textures/viezeoudeman/V_santaApproves.tga", 270, 190, 270, 150, 100, 100, 0, 1, 0, 1, 3, 1, user);
						user playsound("cough" + randomIntRange(1, 4));
						wait(0.5);
						radiusDamage( user.origin, 1, 1, 1);
						break;
					case 5:
						user iprintlnbold("This is fine");
						wait(1);
						user playsound("cough" + randomIntRange(1, 4));
						radiusDamage( user.origin, 1, 1, 1);
						wait(2);
						radiusDamage( user.origin, 1, 1, 1);
						wait(2);
						radiusDamage( user.origin, 1, 1, 1);
						wait(2);
						user suicide();
						players[i].eatSnow = 0;
						break;
					default:
						break;
				}
				break;
			}
		}
		wait (2);
	}		
}

frostyHeadMove(head, headBeginOrigin, eyebrows, eyebrowsBeginOrigin, mouthHappy, mouthSad, shootTrigger){
	
	while(level.frostySong == true){
		players = getEntArray("player", "classname");
		playerArray = [];
		
		//Gather all players in starting area
		for(i = 0; i < players.size; i++){
			if(-1536 < players[i].origin[0] && players[i].origin[0] < 1536 && -1536 < players[i].origin[1] && players[i].origin[1] < 0 && players[i].sessionstate == "playing"){
				playerArray[playerArray.size] = players[i];
			}			
		}
		
		//Choose random player in starting area and lock on
		if(playerArray.size > 0){
			randomPlayerInStartingArea = playerArray[randomIntRange(0, playerArray.size)];
			randomPlayerInStartingArea iprintln("Frosty likes you.");
			level.isFrostyLockedOnPlayer = true;
			thread shootFrosty(shootTrigger,randomPlayerInStartingArea, mouthHappy, mouthSad);
			
			//While player stays in area keep locking on with the right angles. Are you good in maths? :-)
			while((-1536 < randomPlayerInStartingArea.origin[0]) && (randomPlayerInStartingArea.origin[0] < 1536) && (-1536 < randomPlayerInStartingArea.origin[1]) && (randomPlayerInStartingArea.origin[1] < 0) && (level.frostySong == true) && randomPlayerInStartingArea.sessionstate == "playing"){
				angleX = -1*atan((randomPlayerInStartingArea.origin[0] - head.origin[0])/(randomPlayerInStartingArea.origin[1] - head.origin[1]));
				if(randomPlayerInStartingArea.origin[1] < head.origin[1]){angleX = angleX + 180;}
				angleY = atan((randomPlayerInStartingArea.origin[2] + 30 - head.origin[2])/length((randomPlayerInStartingArea.origin[0],randomPlayerInStartingArea.origin[1], head.origin[2]) - head.origin));
				head RotateTo((0, angleX, angleY), 0.05 );
				eyebrows RotateTo((0, angleX, angleY), 0.05);
				wait(0.1);
				if(level.isFrostyHurt == true){
					head moveto(randomPlayerInStartingArea.origin + (0,0,30), 0.6 );
					eyebrows moveto(randomPlayerInStartingArea.origin + (0,0,30), 0.6);
				}
			}
			level.isFrostyLockedOnPlayer = false;
			level.isFrostyHurt = false;
			mouthSad stopLoopSound();
			mouthSad hide();
			mouthHappy show();
			head RotateTo((0, 0, 0), 0.5 );
			eyebrows RotateTo((0, 0, 0), 0.5);
			eyebrows waittill("rotatedone");
			head moveto(headBeginOrigin, 0.5 );
			eyebrows moveto(eyebrowsBeginOrigin, 0.5);
			eyebrows waittill("movedone");
		}
		wait(3);
	}
	head RotateTo((0, 0, 0), 0.5 );
	eyebrows RotateTo((0, 0, 0), 0.5);
	eyebrows waittill("rotatedone");
	head moveto(headBeginOrigin, 0.5 );
	eyebrows moveto(eyebrowsBeginOrigin, 0.5);
	eyebrows waittill("movedone");
}

shootFrosty(shootTrigger, lockedOnPlayer, mouthHappy, mouthSad){
	
	shootTrigger waittill("trigger", user);
	if(user == lockedOnPlayer && level.isFrostyLockedOnPlayer){
		user iprintln("Frosty didn't like that!");
		mouthHappy hide();
		mouthSad show();
		mouthSad PlayLoopSound("shellshockLoop");
		level.isFrostyHurt = true;
	}
}

frostyBrow(eyebrows){
	while(level.frostySong == true){
		eyebrows movez(3, 0.15, 0, 0);
		eyebrows waittill("movedone");
		eyebrows movez(-3, 0.15, 0, 0);
		eyebrows waittill("movedone");
	}
}

musicFrosty(){
	trigger = getent ("musicFrosty","targetname");
	head = getent ("frostyHead","targetname");
	eyebrows = getent ("frostyBrow","targetname");
	mouthHappy = getent ("frostyMouthHappy","targetname");
	mouthSad = getent ("frostyMouthSad","targetname");
	mouthSad hide();
	shootTrigger = getent ("frostyShootTrigger","targetname");
	hurtTrigger = getent ("frostyHurtTrigger","targetname");
	wait(0.05);
	shootTrigger enableLinkTo();
	shootTrigger linkTo(head);
	hurtTrigger enableLinkTo();
	hurtTrigger linkTo(head);
	mouthHappy linkTo(head);
	mouthSad linkTo(head);
	headBeginOrigin = head.origin;
	eyebrowsBeginOrigin = eyebrows.origin;
	
	while(1){
		trigger waittill("trigger", user);
		level.frostySong = true;
		thread frostyBrow(eyebrows);
		thread frostyHeadMove(head, headBeginOrigin, eyebrows, eyebrowsBeginOrigin, mouthHappy, mouthSad, shootTrigger);
		user iprintlnbold("Frosty's favourite song!");
		ambientPlay("frostyThePervert");
		wait(146);
		level.frostySong = false;
		wait(1); //extra second to let rotation of the head finish
		ambientPlay("rudeXmasSong");
	}
}
//When modifying speed (the rate at which the lights change), also change the corresponding .efx file lifespan
redGreenBlueYellow(lightName, speed, start){
	
	switch(start){
		case 0:
			wait(speed);
			maps\mp\_fx::loopfx("red",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("green",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("blue",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("yellow",lightName.origin, speed*4);
			break;
		case 1:
			wait(speed);
			maps\mp\_fx::loopfx("green",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("blue",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("yellow",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("red",lightName.origin, speed*4);
			break;
		case 2:
			wait(speed);
			maps\mp\_fx::loopfx("blue",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("yellow",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("red",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("green",lightName.origin, speed*4);
			break;
		case 3:
			wait(speed);
			maps\mp\_fx::loopfx("yellow",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("red",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("green",lightName.origin, speed*4);
			wait(speed);
			maps\mp\_fx::loopfx("blue",lightName.origin, speed*4);
			break;
		default:
			break;
	}	
}

/*
* A shader will show up on the players' hud. it will fade in and back out and there is some movement when tere are
* different starting and ending positions.
* param shader:  The image that will be shown
* param startX: The leftmost starting position of the shader
* param startY: The uppermost starting position of the shader
* param endX: The leftmost ending position of the shader
* param endY: The uppermost ending position of the shader
* param width: The width of the shader, 640 is whole screen length
* param height: The heighth of the shader, 480 is whole screen height
* param startAlpha: The alpha of the shader when it first shows
* param peakAlpha: The alpha the shader will fade to
* param endAlpha: The alpha the shader will be at the end
* param transitionTime1: Time to go from startAlpha to peakAlpha, cant be 0
* param transitionTime2: Time to go from peakAlpha to endAlpha, cant be 0
* param stayAtPeakAlphaTime: Time that the peakAlpha will be shown
* param user: The player that has this effect
*/
colorfade(shader, startX, startY, endX, endY,  width, height, startAlpha, peakAlpha, endAlpha, transitionTime1, transitionTime2, stayAtPeakAlphaTime,user){
	hud = newClientHudElem(user);
	hud.x = startX;
	hud.y = startY;
	hud.alpha = startAlpha;
	hud setShader(shader, width, height);
	hud MoveOverTime(transitionTime1 + transitionTime2 + stayAtPeakAlphaTime);
	hud.x = endX;
	hud.y = endY;
	hud fadeOverTime(transitionTime1);
	hud.alpha = peakAlpha;
	wait(transitionTime1);
	wait(stayAtPeakAlphaTime);
	hud fadeOverTime(transitionTime2);
	hud.alpha = endAlpha;
	wait (transitionTime2);
	hud destroy();
}