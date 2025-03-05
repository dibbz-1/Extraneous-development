var keyZ = keyboard_check_pressed(ord("Z"));
var keyX = keyboard_check_pressed(ord("X"));

if gliding=0 glide_sin(x,obj_player.y-40,5)

if attacking{
	counter++;
	if counter==100 attacking=false
	if image_xscale>0.2{
		image_xscale-=0.007; 
		image_yscale-=0.007;
	}
	if image_xscale>0.4 attacking=false;
	if sprite_index==spr_quicktimeZ{
		if keyZ{
			image_xscale+=0.05; 
			image_yscale+=0.05;
		}
	}else{
		if keyX{
			image_xscale+=0.05; 
			image_yscale+=0.05;
		}
	}
}

obj_fightmanager.playerAttPwr=1000/counter