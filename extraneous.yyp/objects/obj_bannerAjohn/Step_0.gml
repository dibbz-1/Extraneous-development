

switch global.fightingState{
	case 3:
		switch obj_fightmanager.turn{
			case 1:
			glide_sin(200,180,5);
			break;
			default:
			glide_sin(200,210,5);
			break;
			
		}
	break;
	default:
		glide_sin(200,300,10);
	break;
}
_x=x;
_y=y;