switch global.cutStep{
	case 2:
		if ajohnTrick{
			counter++;
			obj_ajohn_npc.x--;
			if counter==20{
				create_text("trick over");
				global.cutStep++;
			}
		}else global.cutStep=4;
	break;
	
	case 4:
		global.plrMove=1
		global.cutStep=0;
		obj_ajohn_npc.interact=true;
		instance_destroy();
		instance_destroy(obj_cutsceneManager);
	break;
		
}