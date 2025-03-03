//characters
global.mus=audio_play_sound(mus_fight,1,1);

char_1 = obj_bannerBeebo;
char_2 = obj_bannerAjohn;
enemy = spr_none;
sub = 0;
frames_s = 7
alarm[0] = frames_s;
alarm[1] = 30;
char_size = 2;
turn=0;

portrait_background = spr_bannerbeebo;
portrait_width = 150/sprite_get_width(portrait_background);
portrait_height = 230/sprite_get_height(portrait_background);
health_fill = spr_specialbar_fill;
health_border = spr_specialbarborder;
color = c_white;
textxl = 55;

beep_hp = 100;
beep_special = 34;

ajohn_hp = 100;
ajohn_special = 0;

instance_create_depth(145,250,0,char_1)
instance_create_depth(210,250,0,char_2)


draw_set_halign(fa_right);

/*
	fighting states:
	
	STATE 0 - not fighting
	STATE 1 - fighting init.
	STATE 2 - opening dialogue
	STATE 3 - player turn
	STATE 4 - player turn execution
	STATE 5 - enemy turn execution
	RETURN TO STATE 2, IF NO DIALOGUE SKIP TO STATE 3
*/