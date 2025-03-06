var right = keyboard_check_pressed(vk_right);
var left = keyboard_check_pressed(vk_left);
var up = keyboard_check_pressed(vk_up);
var down = keyboard_check_pressed(vk_down);
var confirm = keyboard_check_pressed(ord("Z"));

switch global.fightingState{
	case 3:
		obj_cameraManager.gliding=6
		if right{
			if turn!=1 turn++;
			else turn=0;
		}
		if left{
			if turn!=0 turn--;
			else turn=1;
		}
		if confirm{
			global.fightingState++;
			obj_cameraManager.gliding=8;
			switch turn{
				case 0:
					create_text("player turn");
				break;
				case 1:
					create_text("ajohn turn");
				break;
			}
		}
	break;
	case 5:
		obj_cameraManager.gliding=8;
		if turn=teamCount-1{
			switch playerAct{
				case "attack":
					obj_cameraManager.gliding=2;
					if tut{
						if !spawned{ 
							instance_create_depth(0,0,obj_player.depth-1,gpx_spamPrompt); 
							spawned=true;
						}
						else if !instance_exists(gpx_spamPrompt){ 
							tut=false; 
							spawned=false; 
						}
					}
					else{
						if !spawned instance_create_depth(0,0,obj_player.depth-1,obj_quicktime); spawned=true;
					}
				break;
				default:
					switch ajohnAct{
						
					}
				break;
			}
		} else{
			turn++
			global.fightingState=4;
			switch turn{
				case 0:
					create_text("player turn");
				break;
				case 1:
					create_text("ajohn turn");
				break;
			}
		}
	break;
	case 6:
		turn=0;
		spawned=false;
		obj_cameraManager.gliding=6;
	break;
	case 7:
		obj_cameraManager.gliding=10;
	break;
			
}