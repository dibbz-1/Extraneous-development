switch sprite_index{
	case spr_three:
		sprite_index=spr_two;
	break;
	case spr_two:
		sprite_index=spr_one;
	break;
	case spr_one:
		attacking=true;
		randomize()
		if choose(true,false) sprite_index=spr_quicktimeX; 
		else sprite_index=spr_quicktimeZ;
	break;
}