switch global.cutStep{
	case 1:
		if ajohnTrick{
			counter++;
			obj_ajohn.x--;
			if counter==20{
				create_text("trick over");
				global.cutStep++;
			}
		}else global.cutStep=3;
	break;
	
	case 3:
		global.plrMove=1
		global.cutStep=0;
		obj_ajohn.interact=true;
		audio_stop_all();
		global.mus=audio_play_sound(mus_outside,1,0);
		instance_destroy();
		instance_destroy(obj_cutsceneManager);
	break;
		
}