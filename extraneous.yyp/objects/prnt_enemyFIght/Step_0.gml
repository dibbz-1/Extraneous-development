var fight = obj_fightmanager;
//if enemy is dead
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
	//if all enemies are dead, end fight
	if array_all_ext(global.enemy,"DEAD"){
		global.fightingState=9;
	}
	//if enemy is killed and enemies still remain, continue fight
	else{
		show_debug_message(global.enemy);
		if obj_fightmanager.currentTurn==1 global.fightingState++;
		else{
			global.fightingState=5; 
			obj_fightmanager.currentTurn++;
		}
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
//if player is attacking
if global.fightingState==6 && !alarmStarted{
	//init
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
	
	//if beebo's chosen target does not exist
	if !array_contains(global.enemy,fight.beeboTarg)&& fight.currentTurn==0{
		//set targ to alive enemy
		for (var i=0;i<array_length(global.enemy);i++){
			if (global.enemy[i]!="DEAD"){
				fight.beeboTarg=global.enemy[i];
				continue;
			}
		}
		show_debug_message(fight.beeboTarg);
		show_debug_message("beebo target is dead");
	} 
	
	//if ajohn's chosen target does not exist
	if !array_contains(global.enemy,fight.ajohnTarg)&& fight.currentTurn==1{
		//set targ to alive enemy
		for (var i=2;i>0;i--){
			if (global.enemy[i]!="DEAD"){
				fight.ajohnTarg=global.enemy[i];
				break;
			}
		}
		show_debug_message(fight.ajohnTarg);
		show_debug_message("ajohn target is dead");
	}
	
	//execute player actions
	if !debug{
		if fight.beeboTarg==enemy && fight.currentTurn==0 && fight.playerAct=="attack"{
			alarm[0]=30;	
			show_debug_message(fight.beeboTarg);
		} else if fight.ajohnTarg==enemy && fight.currentTurn==1 && fight.ajohnAct=="attack"{
			alarm[0]=30;
			show_debug_message(fight.ajohnTarg);
		} else alarmStarted=false;
	}
	else{
		damage=100000000;
		alarm[0]=1;
	}
} 
//if enemy is attacking
else if global.fightingState==7 && !alarmStarted{
	if global.enemyTurn<=global.enemyCount{
		if global.enemy[global.enemyTurn]==enemy{
			enemyTurn=global.enemy[global.enemyTurn];
			if string_count("Bug",global.enemy[global.enemyTurn])>0 enemyTurn="bug"
			if string_count("Worm",global.enemy[global.enemyTurn])>0 enemyTurn="worm"
			
			switch enemyTurn{
				case "bug":
					show_debug_message("bug is attacking");
					bullets=0;
					alarm[3]=50;
					alarmStarted=true;
				break;
				case "Cifirie":
					show_debug_message("bug is attacking");
					bullets=0;
					alarm[3]=50;
					alarmStarted=true;
				break;
				case "worm":
					show_debug_message("worm is attacking");
					bullets=0;
					alarm[5]=50;
					alarmStarted=true;
				break;
			}
		}else if (global.enemy[global.enemyTurn]=="DEAD")&&!alarmStarted{
			alarmStarted=true;
			show_debug_message("enemy {0} is dead and will not attack",global.enemyTurn)
			enemy_turn_over();
		}
		else alarmStarted=false;
	} else alarmStarted=false;
}