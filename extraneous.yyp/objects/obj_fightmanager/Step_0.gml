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
			create_text("player turn");
		}
	break;
	case 5:
		switch playerAct{
			case "attack":
				obj_cameraManager.gliding=2;
				if !tut{
					if !spawned instance_create_depth(0,0,obj_player.depth-1,gpx_spamPrompt); spawned=true;
					if !instance_exists(gpx_spamPrompt) tut=true;
				}
				else{
					
				}
				
		}
	break;
}