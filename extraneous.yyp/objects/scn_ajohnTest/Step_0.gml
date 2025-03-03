switch global.cutStep{
	case 1:
		if ajohnTrick{
			show_debug_message("fart");
			counter++;
			obj_ajohn_npc.x--;
			if counter==20{
				create_text("trick over");
				global.cutStep++;
			}
		}else global.cutStep=3;
	break;
	
	case 3:
		global.plrMove=1
		global.cutStep=0;
		obj_ajohn_npc.interact=true;
		instance_destroy();
		instance_destroy(obj_cutsceneManager);
	break;
		
}