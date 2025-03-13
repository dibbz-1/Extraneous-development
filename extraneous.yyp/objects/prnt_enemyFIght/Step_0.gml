var fight = obj_fightmanager;

if global.fightingState==6 && !alarmStarted{
	alarmStarted=true; 
	bounceIntensity=fight.playerAttPwr/5;
	damage=fight.playerAttPwr
	tAlpha=1;
	randomize();
	xBounce=irandom_range(-0.1,0.1);
	yBounce=-4;
	txtX=x;
	txtY=y
	bounce=bounceIntensity;
	first=true;
	if fight.beeboTarg==enemy && fight.currentTurn==0 alarm[0]=30;
	else if fight.ajohnTarg==enemy && fight.currentTurn==1 alarm[0]=30;
	else alarmStarted=false;
	
	
} else if global.fightingState==7 && !alarmStarted{
	if global.enemy[global.enemyTurn]==enemy{
		switch global.enemy[global.enemyTurn]{
			case "bug":
				if !tut{
					alarm[3]=50
					bullets=0;
					alarmStarted=true;
				} else {
					if !spawned{
						var inst = instance_create_depth(0,0,obj_player.depth-1,gpx_dodgePrompt);
						spawned=true;
				}
					if !instance_exists(gpx_dodgePrompt){
						tut=false; 
						spawned=false;
					}
				}
			break;
			case "worm":
				if !tut{
					alarm[5]=50
					bullets=0;
					alarmStarted=true;
				} else {
					if !spawned{
						var inst = instance_create_depth(0,0,obj_player.depth-1,gpx_dodgePrompt);
						spawned=true;
				}
					if !instance_exists(gpx_dodgePrompt){
						tut=false; 
						spawned=false;
					}
				}
			break;
		}
	}else alarmStarted=false;
}