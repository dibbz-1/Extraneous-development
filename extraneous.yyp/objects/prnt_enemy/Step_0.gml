switch state{
	case 0://still
		var rand=round(random_range(1,mvFreq));
		if rand==1{
			state++;
		} else if distance_to_object(obj_player)<50 && global.cutStep==0 state=4; 
	break;
	case 1://which direction?
		var xory=round(random_range(1,3));
		dir=round(random_range(1,2));
		if (dir==1) dir=1;
		else dir=-1;
		if (xory==1) state=2;
		else state=3;
		
		
	break;
	case 2:
		image_xscale=dir*-1;
		counter++;
		x+=dir*mvSpd;
		if (counter==mvDist){
			state=0; 
			counter=0;
		}
	break;
	case 3:
		counter++;
		y+=dir*mvSpd;
		if (counter==mvDist){
			state=0; 
			counter=0;
		}
	break;
	case 4:
		move_towards_point(obj_player.x,obj_player.y+15,mvSpd*1.5);
		
	break;
	case 5:
		//do nothing
		move_towards_point(x,y,0)
	break;

}
if place_meeting(x,y,obj_player)&&global.fightingState==0{
	state=5;
	global.enemy=iam;
	global.fightingState=1;	
	instance_create_depth(0,0,0,gpx_fight);
	audio_stop_all();
	global.mus=audio_play_sound(snd_fightStart,1,0);
}