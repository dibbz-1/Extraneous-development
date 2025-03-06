var keyZ = keyboard_check_pressed(ord("Z"));
var keyX = keyboard_check_pressed(ord("X"));

if gliding=0 glide_sin(x,obj_player.y-40,5)
else{
	glide_sin(x,-10,5);
	if y<0 instance_destroy();
}

if attacking{
	counter+=0.1;
	if counter==100{
		attacking=false; 
		obj_fightmanager.playerAttPwr=0;
		instance_create_depth(0,0,depth-1,gpx_hitPower);
	}
	if image_xscale>0.2{
		image_xscale-=0.007; 
		image_yscale-=0.007;
	}
	if hitPitch=1.7{
		attacking=false; 
		obj_fightmanager.playerAttPwr=200/counter;
		instance_create_depth(0,0,depth-1,gpx_hitPower);
	}
	if sprite_index==spr_quicktimeZ{
		if keyZ{
			image_xscale+=0.05; 
			image_yscale+=0.05;
			audio_play_sound(snd_orchHit,1,0,1,0,hitPitch);
			hitPitch+=0.1
		}
	}else{
		if keyX{
			image_xscale+=0.05; 
			image_yscale+=0.05;
			audio_play_sound(snd_orchHit,1,0,1,0,hitPitch);
			hitPitch+=0.1
		}
	}
}
if global.fightingState==6 gliding=1;