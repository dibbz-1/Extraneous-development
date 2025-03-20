var confirm = keyboard_check_pressed(ord("Z"));

if gliding==0{
	glide_sin(x,140,10);
	if confirm gliding=1;
}else{
	glide_sin(x,-10,10);
	if y<0 instance_destroy();
}