switch global.cutStep{
	case 1:
		counter++;
		obj_ajohn_npc.x--;
		if counter==60{
			global.cutStep++;
			counter=0;
			create_text("log01");
		}
	break;
	case 3:
		counter++
		obj_ghost.image_alpha-=.05;
		if counter==20{
			global.cutStep++;
			counter=0;
		}
	case 4:
		global.plrMove=1;
		counter++;
		obj_ajohn_npc.x++;
		if counter==120{
			global.cutStep=0;
			obj_ajohn_npc.interact=true;
			instance_destroy();
			instance_destroy(obj_cutsceneManager);
		}
	break;
		
}