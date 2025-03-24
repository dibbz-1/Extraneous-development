switch global.cutStep{
	case 1:
		counter++;
		if counter==20{
			if counterb==4{
				global.cutStep++;
				counter=0;
			}
			counterb++;
			if counterb==1 obj_player.sprite_index=spr_beebo_right;
			if counterb==2 obj_player.sprite_index=spr_beebo_backwards;
			if counterb==3 obj_player.sprite_index=spr_beebo_left;
			if counterb==4 obj_player.sprite_index=spr_beebo_forward;
			counter=0;
		}
	break;
	case 2:
		create_text("log.intro2");
	break;
	case 3:
		counter++;
		obj_ajohn.x--;
	break;
}