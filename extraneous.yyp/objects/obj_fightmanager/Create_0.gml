//characters
global.mus=audio_play_sound(mus_fight,1,1);
global.enemyTurn=0;

for(var i=0;i<array_length(global.enemy);i++){
	switch i{
		case 0:
			
			var enemyA = instance_create_depth(295,164,0,obj_enemyA);
			with enemyA{
				enemy=global.enemy[i];
				if string_count("Bug",enemy)>0 sprite_index=spr_bug; pos=i; 
				if string_count("Worm",enemy)>0 sprite_index=spr_wurmie; pos=i; 
			}
			instance_create_depth(0,0,0,obj_bannerEnemyA);
		break;
		case 1:
			
			var enemyB = instance_create_depth(270,144,0,obj_enemyB);
			with enemyB {
				enemy=global.enemy[i];
				if string_count("Bug",enemy)>0 sprite_index=spr_bug; pos=i; 
				if string_count("Worm",enemy)>0 sprite_index=spr_wurmie; pos=i; 
			}
			instance_create_depth(0,0,0,obj_bannerEnemyB);
		break;
		case 2:
			var enemyC = instance_create_depth(295,124,0,obj_enemyC);
			with enemyC{
				enemy=global.enemy[i];
				if string_count("Bug",enemy)>0 sprite_index=spr_bug; pos=i; 
				if string_count("Worm",enemy)>0 sprite_index=spr_wurmie; pos=i; 
			}
			instance_create_depth(0,0,0,obj_bannerEnemyC);
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
beeboXP=0;

ajohnAct="";
ajohnAttPwr=0;
ajohnTarg="";
ajohnXP=0;

gold=0;

tut=false;
spawned=false;

teamCount=2;
currentTurn=0;

instance_create_depth(145,250,0,char_1)
instance_create_depth(210,250,0,char_2)
instance_create_depth(340,0,0,obj_bannerEnemyA)

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