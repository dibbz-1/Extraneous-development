if  !instance_exists(obj_textbox) && global.fightingState=0{
	gliding=1;
	zoomFinished=false;
} else if global.fightingState==1{
	gliding=5;
} 
depth=0;


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
		cam_glide(obj_ajohn.x,obj_ajohn.y,CAM_WIDTH/2,CAM_HEIGHT/2,10);
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
		cam_glide(obj_player.x,obj_player.y,CAM_WIDTH/3,CAM_HEIGHT/3,8);
		//start fight
		if round(width)=CAM_WIDTH/3 && !zoomFinished{
			fadeToRoom(rm_fight, 5, c_black, 185, 110, global.enemy);
			
			global.fightingState=2;
			zoomFinished=true;
		}
	break;
	
	case 6:
		focus="global";
		cam_glide(245,150,CAM_WIDTH/1.2,CAM_HEIGHT/1.2,10);
	break;
	
	case 7:
		focus="global";
		cam_glide(obj_enemyA.x,obj_enemyA.y,CAM_WIDTH/2,CAM_HEIGHT/2,10);
	break;
	
	case 8:
		focus="global";
		cam_glide(245,110,CAM_WIDTH/1.2,CAM_HEIGHT/1.2,10);
	break;
	
	case 9:
		focus="global";
		cam_glide(185,110,CAM_WIDTH/1.5,CAM_HEIGHT/1.5,10);
	break;
	case 10:
		focus="global";
		cam_glide(210,130,CAM_WIDTH/1.5,CAM_HEIGHT/1.5,10);
	break;
	
}