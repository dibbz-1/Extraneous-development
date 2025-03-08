switch gliding{
	case 0:
		glide_sin(x,targ.y,5);
		if round(y)==targ.y gliding++;
	break;
	case 1:
		alarm[0]=20; gliding=2
		
	break;
	case 3:
		glide_sin(x,-10,5);
		if y<0 {
			global.fightingState++;
			instance_destroy();
		}
	break;
	
}