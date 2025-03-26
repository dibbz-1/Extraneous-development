switch global.cutStep{
	case 1:
		counter++;
		if counter==7{

			counterb++;
			if counterb==1 obj_player.sprite_index=spr_beebo_right;
			if counterb==2 obj_player.sprite_index=spr_beebo_backwards;
			if counterb==3 obj_player.sprite_index=spr_beebo_left;
			if counterb==4 obj_player.sprite_index=spr_beebo_forward;
			if counterb==4{
				global.cutStep++;
				counterb=0;
			}
			counter=0;
		}
	break;
	case 2:
		if counterb=0 counter++;
		if counter==20{
			create_text("log.intro2");
			counterb++;
			counter=0;
		} 
	break;
	case 3:
		counter++;
		obj_ajohn.x-=1.2;
		if counter==130{
			global.cutStep++;
			counter=0;
			counterb=0;
		}
	break;
	case 4:
		if counterb=0 counter++;
		if counter==50{
			create_text("log.intro3");
			counterb++
			counter=0;
		} 
	break;
	case 5:
		if counterb==1 counter++;
		if obj_ajohn.y<450{
			obj_ajohn.y++;
			obj_player.y++;
		}
		obj_player.image_speed=1;
		if counter==50{
			create_text("log.intro4");
			counter=0;
			counterb++;
			setup=true;
		}
		
	break;
	case 6:
		if counterb==2 counter++;
		if counter==15 obj_player.image_speed=0;
		if counter==60 obj_player.sprite_index=spr_beebo_right;
		
		if counter==130{
			
			create_text("log.intro5");
			counter=0;
			counterb++;
		}
		if counter==0 &&counterb==3 char_shake(obj_player,5,2);
		
	break;
	case 7:
		if counter==1 obj_cifirie.y=obj_player.y+150
		if counterb==3{
			counter++; 
			obj_cifirie.y-=2.5;
		}
		if counter==50{
			create_text("log.intro6");
			counter=0
			counterb++;
		}
		
	break;
}