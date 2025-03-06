switch global.enemy{
	case spr_bug:
	switch global.fightingState{
		case 6:
			if !alarmStarted{
				alarm[0]=30; 
				alarmStarted=true; 
				bounceIntensity=obj_fightmanager.playerAttPwr/5;
				obj_fightmanager.enemy_hp-=obj_fightmanager.playerAttPwr
				bounce=bounceIntensity;
				first=true;
			}
		break;
		case 7:
			if !tut{
				if!alarmStarted{
					alarm[3]=50
					bullets=0;
					alarmStarted=true;
				}
			} else {
				if !spawned{
					var inst = instance_create_depth(0,0,obj_player.depth-1,gpx_dodgePrompt);
					with inst x=230;
					spawned=true;
			}
				if !instance_exists(gpx_dodgePrompt){
					tut=false; 
					spawned=false;
				}
			}
	}
	break;
	case spr_wurmie:
	
	break;
}