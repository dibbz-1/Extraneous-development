var confirm_key_pressed = keyboard_check_pressed(ord("Z"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));


if confirm_key_pressed && place_meeting(x,y,obj_player) && !instance_exists(obj_textbox) && interact{
	
	instance_create_layer(obj_ajohn.x,obj_ajohn.y,"characters",scn_ajohnTest);

	
}
if global.fightingState==7{
	sprite_index=spr_ajohnFight;
	xSpd = (right - left)*mvSpd;
	if place_meeting(x,y,prnt_bullet)&&!invincible{
		invincible=true;
		image_alpha=0.5
		alarm[1]=50
		audio_play_sound(snd_hit,1,0);
		obj_fightmanager.ajohn_hp-=10;
	}
	if !(x+xSpd>300 or x+xSpd<160) x+=xSpd;
} else sprite_index=spr_ajohnIdle;




//face_player
