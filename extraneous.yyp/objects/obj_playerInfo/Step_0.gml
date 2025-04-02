if gliding==0 glide_sin(obj_player.x,obj_player.y-30,10);
if gliding==2 glide_sin(50,190,10);
if gliding==3 glide_sin(-50,190,10);

if gliding==1{
	glide_sin(obj_player.x-400,obj_player.y-30,10);
	if !visible_in_viewport(0) instance_destroy();
}