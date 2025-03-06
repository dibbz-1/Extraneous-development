//get keys
var rightKey = keyboard_check(vk_right);
var leftKey = keyboard_check(vk_left);
var upKey = keyboard_check(vk_up);
var downKey = keyboard_check(vk_down);

if !instance_exists(obj_textbox) && !instance_exists(obj_rmTrans) && global.plrMove{
	sprite_index=spr_beepIdle;
	//var attackKey = keyboard_check_pressed(ord("C"));

	//calculate X&Y
	xSpd = (rightKey - leftKey)*mvSpd;
	ySpd = (downKey - upKey)*mvSpd;

	//col
	if place_meeting(x+xSpd,y,obj_colBox){
		xSpd=0;	
	}
	if place_meeting(x,y+ySpd,obj_colBox){
		ySpd=0;
	}

	//execute movement
	x+=xSpd;
	y+=ySpd;
	
	//attack
	//if attackKey{
	//	instance_create_depth(x,y,depth,obj_beebSword);
	//}
		

	//depth sorting
} else if global.fightingState==7{
	sprite_index=spr_beeboFight
	xSpd = (rightKey - leftKey)*mvSpd;
	if place_meeting(x,y,obj_enemyBulletTest)&&!invincible{
		invincible=true;
		image_alpha=0.5
		alarm[1]=50
		audio_play_sound(snd_hit,1,0);
		obj_fightmanager.beebo_hp-=10;
	}
	if !(x+xSpd>200 or x+xSpd<160) x+=xSpd;
} else if global.fightingState==3{
	if x<185 x++
	else if x>185 x--
}