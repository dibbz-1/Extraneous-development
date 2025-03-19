var fight = obj_fightmanager;
if image_alpha==0 {
	show_debug_message(instance);
	if instance == obj_enemyA{
		array_delete(global.enemy,0,1); 
		show_debug_message("a");
	}
	if instance == obj_enemyB{
		array_delete(global.enemy,1,1);
		show_debug_message("b");
	}
	if instance == obj_enemyC{
		array_delete(global.enemy,2,1); 
		show_debug_message("c");
	}
	
	show_debug_message(global.enemy);
	if obj_fightmanager.currentTurn==1 global.fightingState++;
	else{
		global.fightingState=5; 
		obj_fightmanager.currentTurn++;
	}
	instance_destroy();
}
if enemy_hp<=0{
	image_alpha-=0.05; 
	x+=5;
	y-=0.8;
	image_angle-=4;
}
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
	if fight.beeboTarg==enemy && fight.currentTurn==0 && fight.playerAct=="attack" alarm[0]=30;
	else if fight.ajohnTarg==enemy && fight.currentTurn==1 && fight.ajohnAct=="attack" alarm[0]=30;
	else alarmStarted=false;

} else if global.fightingState==4{
	switch obj_textbox.option[obj_textbox.option_pos] 
	{
		case enemy: image_blend=c_red;
		default: image_blend=c_white;
	}	
}else if global.fightingState==7 && !alarmStarted{
	if global.enemy[global.enemyTurn]==enemy&&global.enemyTurn<array_length(global.enemy){
		if string_count("Bug",global.enemy[global.enemyTurn])>0 enemyTurn="bug"
		if string_count("Worm",global.enemy[global.enemyTurn])>0 enemyTurn="worm"
		switch enemyTurn{
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