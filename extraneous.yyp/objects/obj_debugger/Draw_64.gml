draw_text_color(50,50,global.fightingState,255,255,255,0,1);

try {
	draw_text_color(50,70,obj_fightmanager.currentTurn,255,255,255,0,1);
	draw_text_color(50,90,obj_fightmanager.beeboTarg,255,255,255,0,1);
	draw_text_color(50,110,obj_fightmanager.ajohnTarg,255,255,255,0,1);
} catch (except){}