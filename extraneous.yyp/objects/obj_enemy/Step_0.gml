var fight = obj_fightmanager;
if global.fightingState==6{
	if !alarmStarted{
		show_debug_message(enemy);
		alarmStarted=true; 
		bounceIntensity=fight.playerAttPwr/5;
		fight.enemy_hp-=fight.playerAttPwr
		bounce=bounceIntensity;
		first=true;
		switch fight.currentTurn{
			case 0:
				if fight.beeboTarg=="bug"{
					show_debug_message("target match")
					if enemy=="bug" alarm[0]=30;
				}
				if fight.beeboTarg=="worm"{
					show_debug_message("targ match")
					if enemy=="worm" alarm[0]=30;
				}
			break;
			case 1:
				if fight.ajohnTarg=="bug"{
					show_debug_message("targ match")
					if enemy=="bug" alarm[0]=30;
				}
				if fight.ajohnTarg=="worm"{
					show_debug_message("targ match")
					if enemy=="worm" alarm[0]=30;
				}
			break;
			
		}
		
	}
} else if global.fightingState==7 && !alarmStarted{
	switch global.enemy[enemyTurn]{
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
}