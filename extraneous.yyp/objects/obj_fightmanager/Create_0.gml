//characters
global.mus=audio_play_sound(mus_fight,1,1);

for(var i=0;i<array_length(global.enemy);i++){
	switch i{
		case 0:
			var enemyA = instance_create_depth(295,164,0,obj_enemy);
			with enemyA{
				if global.enemy[i]="bug"sprite_index=spr_bug; pos=i;
				if global.enemy[i]="worm"sprite_index=spr_wurmie; pos=i;
			}
		break;
		case 1:
			var enemyB = instance_create_depth(270,144,0,obj_enemy);
			with enemyB{
				if global.enemy[i]="bug"sprite_index=spr_bug; pos=i;
				if global.enemy[i]="worm"sprite_index=spr_wurmie; pos=i;
			}
		break;
		case 2:
			var enemyC = instance_create_depth(295,184,0,obj_enemy);
			with enemyC{
				if global.enemy[i]="bug"sprite_index=spr_bug; pos=i;
				if global.enemy[i]="worm"sprite_index=spr_wurmie; pos=i;
			}
		break;
	}
}
char_1 = obj_bannerBeebo;
char_2 = obj_bannerAjohn;
enemy = spr_none;
sub = 0;
frames_s = 7
alarm[0] = frames_s;
alarm[1] = 30;
char_size = 2;
turn=0;
instance=noone;

color = c_white;
textxl = 55;

enemy_hp = 100;
enemy_maxhp = 200;

beebo_hp = 100;
beebo_maxhp = 100;

ajohn_hp = 100;
ajohn_maxhp = 100;

playerAct="";
playerAttPwr=0;
beeboTarg="";

ajohnAct="";
ajohnAttPwr=0;
ajohnTarg="";

tut=false;
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