switch room{
	case rm_strt:
		fadeToRoom(rm_intro,10,c_black,303,192);
	break;
	
	case rm_intro:
		obj_cameraManager.gliding=1;
	break;
}