switch global.fightingState{
	case 3:
		switch obj_fightmanager.turn{
			case 0:
			glide_sin(140,180,5);
			break;
			default:
			glide_sin(140,210,5);
			break;
			
		}
	break;
	default:
		glide_sin(140,300,10);
	break;
}
_x=x;
_y=y;