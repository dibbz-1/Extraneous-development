//get keys
var rightKey = keyboard_check(vk_right);
var leftKey = keyboard_check(vk_left);
var upKey = keyboard_check(vk_up);
var downKey = keyboard_check(vk_down);

if !instance_exists(obj_textbox) && !instance_exists(obj_rmTrans) && global.plrMove{
	
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

	if xSpd==0 && ySpd==0{
		pressed=false
		image_index=3; 
		image_speed=0;
	} else{
		image_speed=1;
		if !pressed{
			image_index=0; 
			pressed=true;
		}
	}

	if ySpd<0 sprite_index=spr_beebo_backwards;
	else if ySpd>0 sprite_index=spr_beebo_forward;
	
	if xSpd<0 sprite_index=spr_beebo_left;
	else if xSpd>0 sprite_index=spr_beebo_right;
	
	if !(xSpd==0 && ySpd==0){
		//array_delete(global.enemy,0,3);
		randomize();
		var rand = round(random(10));
		if rand==1 fight_init();
	}

	//execute movement
	x+=xSpd;
	y+=ySpd;
	
	//attack
	//if attackKey{
	//	instance_create_depth(x,y,depth,obj_beebSword);
	//}
		

	//depth sorting

} 
else if global.fightingState==1 {image_speed=0;}
else if global.fightingState>=2&&global.fightingState<7 {sprite_index=spr_beebo_fightStance; image_speed=1;}
else if global.fightingState==7{
	xSpd = (rightKey - leftKey)*mvSpd;
	if place_meeting(x,y,prnt_bullet)&&!invincible{
		invincible=true;
		image_alpha=0.5
		alarm[1]=50
		audio_play_sound(snd_hit,1,0);
		obj_fightmanager.beebo_hp-=10;
	}
	if xSpd<0 sprite_index=spr_beebo_left;
	else if xSpd>0 sprite_index=spr_beebo_right;
	
	if xSpd==0{
		pressed=false
		image_index=3; 
		image_speed=0;
	} else{
		image_speed=1;
		if !pressed{
			image_index=0; 
			pressed=true;
		}
	}
	if !(x+xSpd>300 or x+xSpd<160) x+=xSpd;
}

//animation