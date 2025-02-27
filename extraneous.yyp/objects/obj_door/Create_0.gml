//target_x = 0;
//target_y = 0;
//target_rm = 0;

switch(sprDirection)
{
	case "forward":
		sprite_index = spr_doorBasicFront;
	
		image_xscale = 1;
		break;

	case "right":
		sprite_index = spr_doorBasicSide;
	
		image_xscale = -1;
		break;

	case "left":
		sprite_index = spr_doorBasicSide;

		image_xscale = 1;
		break;
	case "back": sprite_index = spr_doorBasicBack;
}