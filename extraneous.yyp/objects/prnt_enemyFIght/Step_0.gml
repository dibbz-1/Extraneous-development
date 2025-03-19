var fight = obj_fightmanager;
if image_alpha==0 {
	if instance == obj_enemyA{
		global.enemy[0]="DEAD";
		show_debug_message("a");
	}
	if instance == obj_enemyB{
		show_debug_message(global.enemy[1]);
		global.enemy[1]="DEAD";
		show_debug_message("b");
	}
	if instance == obj_enemyC{
		global.enemy[2]="DEAD";
		show_debug_message("c");
	}
	
	show_debug_message(global.enemy);
	if obj_fightmanager.currentTurn==1 global.fightingState++;
	else{
		global.fightingState=5; 
		obj_fightmanager.currentTurn++;
	}
	alarmStarted=false;
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
	//if beebo target exists
	if !array_contains(global.enemy,fight.beeboTarg)&& fight.currentTurn==0{
		fight.beeboTarg=global.enemy[0];
		show_debug_message(fight.beeboTarg);
		show_debug_message("enemy target is dead");
	} 
	
	//if ajohn target exists
	if !array_contains(global.enemy,fight.ajohnTarg)&& fight.currentTurn==1{
		fight.ajohnTarg=global.enemy[0];
		show_debug_message(fight.ajohnTarg);
		show_debug_message("enemy target is dead");
	}
	
	//execute player actions
	
	if fight.beeboTarg==enemy && fight.currentTurn==0 && fight.playerAct=="attack"{
		alarm[0]=30;	
		show_debug_message(fight.beeboTarg);
	} else if fight.ajohnTarg==enemy && fight.currentTurn==1 && fight.ajohnAct=="attack"{
		alarm[0]=30;
		show_debug_message(fight.ajohnTarg);
	} else alarmStarted=false;

} else if global.fightingState==4{
	switch obj_textbox.option[obj_textbox.option_pos] 
	{
		case enemy: image_blend=c_red;
		default: image_blend=c_white;
	}	
}else if global.fightingState==7 && !alarmStarted{
	if global.enemy[global.enemyTurn]==enemy&&global.enemyTurn<=global.enemyCount{
		if string_count("Bug",global.enemy[global.enemyTurn])>0 enemyTurn="bug"
		if string_count("Worm",global.enemy[global.enemyTurn])>0 enemyTurn="worm"
		show_debug_message(enemyTurn);
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
			case "DEAD":
				alarm[4]=10;
			break;
		}
	}else if (global.enemy[global.enemyTurn]=="DEAD"){
		global.enemyTurn++; 
	}
	else alarmStarted=false;
}