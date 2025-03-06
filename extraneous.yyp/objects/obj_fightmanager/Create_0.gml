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

enemy_hp = 100;

beebo_hp = 100;

ajohn_hp = 100;

playerAct="";
playerAttPwr=0;

ajohnAct="";
ajohnAttPwr=0;

tut=true;
spawned=false;

teamCount=2;
currentTurn=0;

draw_set_font(fnt_default);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

instance_create_depth(145,250,0,char_1)
instance_create_depth(210,250,0,char_2)
instance_create_depth(340,0,0,obj_bannerEnemy)


draw_set_halign(fa_right);

/*
	fighting states:
	
	STATE 0 - not fighting
	STATE 1 - fighting init.
	STATE 2 - opening dialogue
	STATE 3 - player turn | choosing character
	STATE 4 - player action
	STATE 5 - player action execution
	STATE 6 - enemy response (damage and/or dialogue)
	STATE 7 - enemy turn and player response
	RETURN TO STATE 2, IF NO DIALOGUE SKIP TO STATE 3
*/