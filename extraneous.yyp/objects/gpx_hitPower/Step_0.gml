switch gliding{
	case 0:
		glide_sin(x,obj_player.y,5);
		if round(y)==obj_player.y gliding++;
	break;
	case 1:
		alarm[0]=20; gliding=2
		
	break;
	case 3:
		glide_sin(x,-10,5);
		if y<0 {
			instance_destroy();
			global.fightingState++;
		}
	break;
	
}