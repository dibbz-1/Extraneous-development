var fight = obj_fightmanager;

if global.fightingState==6 && !alarmStarted{
	alarmStarted=true; 
	bounceIntensity=fight.playerAttPwr/5;
	fight.enemy_hp-=fight.playerAttPwr
	bounce=bounceIntensity;
	first=true;
	if fight.beeboTarg==enemy && fight.currentTurn==0 alarm[0]=30;
	else if fight.ajohnTarg==enemy && fight.currentTurn==1 alarm[0]=30;
	else alarmStarted=false;
	
	
} else if global.fightingState==7 && !alarmStarted{
	switch global.enemy[enemyTurn]{
		case spr_bug:
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
		case spr_wurmie:
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
}