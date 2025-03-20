/// @description hit animation
if first{
	audio_play_sound(snd_hit,1,0); 
	first=false; 
	hitSpawn=1;
	enemy_hp-=damage;
}
if enemy_hp<=0{
	alarm[2]=100;
} else{
	x=_x+bounce;
	bounce-=bounceIntensity/10;
	alarm[1]=3
}