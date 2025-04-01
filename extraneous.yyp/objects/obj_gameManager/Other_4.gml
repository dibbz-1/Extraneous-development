switch room{
	case rm_strt:
		
		fadeToRoom(rm001_testA,10,c_black,101,84);
	break;
	
	case rm_intro:
		obj_cameraManager.gliding=1;
	break;
	case rm001_testA:
		obj_cameraManager.gliding=1;
	break;
}
