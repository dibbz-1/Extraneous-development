obj_player.image_alpha=1;
instance_activate_object(obj_cameraManager);
switch room{
	case rm_strt:
		
		fadeToRoom(rm_intro,10,c_black,312,196);
	break;
	
	case rm_intro:
		obj_cameraManager.gliding=1;
	break;
	case rm001_testA:
		audio_stop_all();
		global.mus=audio_play_sound(mus_outside,1,1);
		obj_cameraManager.gliding=1;
	break;
	case rm_shopTest:
		audio_stop_all();
		global.mus=audio_play_sound(mus_shop,1,1);
		instance_deactivate_object(obj_cameraManager);
		obj_player.image_alpha=0;
	break;
}
