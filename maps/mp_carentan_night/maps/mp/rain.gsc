main()
{
     level thread teh_rain();
}

teh_rain() 

{    
    zufall = RandomInt(100);        
            
    while(1) {
        
    
        players = getentarray("player", "classname");        
        
        if(players.size > 0) {
        
            max_nodes         = 20;
            max_nodes_per_player     = max_nodes/players.size;
        
        
            for(ii=0;ii
            
                for(i = 0; i < players.size; i++) {
                        
                    player = players[i];
                            
                    if(isAlive(player)) {
                    
                        x= 350-randomfloat(700);
                        y= 350-randomfloat(700);                    
                
                            pos = player.origin +(x,y,200) ;                        
                            trace = bulletTrace(pos,pos +(0,0,-250), true, undefined);
                            
                            if(trace["fraction"] != 1) playfx(level.the_rain,trace["position"]);                
                            wait 0.05;
                                               
                    }                        
                }
            }                    
        }
        
        wait 0.05;
    }    
}
