if global.fightingState==6{
	if !alarmStarted{
		alarmStarted=true; 
		bounceIntensity=obj_fightmanager.playerAttPwr/5;
		obj_fightmanager.enemy_hp-=obj_fightmanager.playerAttPwr
		bounce=bounceIntensity;
		first=true;
		if sprite_index==spr_bug{
			if obj_fightmanager.beeboTarg=="bug"&&obj_fightmanager.currentTurn==0 or obj_fightmanager.ajohnTarg=="bug"&&obj_fightmanager.currentTurn==1 
			{
				alarm[0]=30;
			}
		}
		else if sprite_index=spr_wurmie{
			if obj_fightmanager.beeboTarg=="worm"&&obj_fightmanager.currentTurn==0 or obj_fightmanager.ajohnTarg=="worm"&&obj_fightmanager.currentTurn==1 
			{
				alarm[0]=30;
			}
		}
		
	}
} else if global.fightingState==7
	switch sprite_index{
		case spr_bug:
			if !tut{
				if!alarmStarted{
					alarm[3]=50
					bullets=0;
					alarmStarted=true;
				}
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
	
		break;
}