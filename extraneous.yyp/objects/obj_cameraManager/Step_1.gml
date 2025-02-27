if  !instance_exists(obj_textbox) && global.fightingState=0{
	gliding=1;
} else if global.fightingState==1{
	gliding=5;
} 


switch gliding{

	case 1:
		focus="global";
		cam_glide(obj_player.x,obj_player.y,CAM_WIDTH,CAM_HEIGHT,2);
	break;
	
	case 2:
		focus="global";
		cam_glide(obj_player.x,obj_player.y,CAM_WIDTH/2,CAM_HEIGHT/2,10);
	break;
	
	case 3:
		focus="global";
		if xPos!=x{
			xPos=x
			yPos=y
		}
		cam_glide(obj_ajohn_npc.x,obj_ajohn_npc.y,CAM_WIDTH/2,CAM_HEIGHT/2,10);
	break;
	
	case 4:
		focus="global"
		if xPos!=x{
			xPos=x
			yPos=y
		}
		cam_glide(200,200,CAM_WIDTH*1.5,CAM_HEIGHT*1.5,10);
	break;

	
	case 5:
		focus="global";
		
		global.plrMove=false;
		cam_glide(obj_player.x,obj_player.y-10,CAM_WIDTH/3,CAM_HEIGHT/3,8);
		//start fight
		if round(width)=CAM_WIDTH/3 && !zoomFinished{
			fadeToRoom(rm_fight, 5, c_black, 65, 70, global.enemy);
			
			global.fightingState=2;
			zoomFinished=true;
		}
	break;
	
	case 6:
		cam_glide(room_width/2,room_width/2,room_width,room_height,10);
	break;
	
	case 7:
		focus="global";
		cam_glide(obj_enemy.x,obj_enemy.y,CAM_WIDTH/2,CAM_HEIGHT/2,10);
	break;
	
}