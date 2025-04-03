switch global.fightingState{
	case 3:
		glide_sin(310,y,5);
	break;
	case 4:
		if instance_exists(obj_textbox){
			switch obj_textbox.option[obj_textbox.option_pos] 
			{
				case inst.enemy: glide_sin(300,y,5);
				default: glide_sin(310,y,5);
			}
		}
	break;
	default:
		glide_sin(500,y,10);
	break;
}