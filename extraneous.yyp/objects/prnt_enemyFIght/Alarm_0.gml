/// @description hit animation
if first{
	audio_play_sound(snd_hit,1,0); 
	first=false; 
	hitSpawn=1;
	show_debug_message(damage);
	obj_fightmanager.enemy_hp-=damage;
}
x=_x+bounce;
bounce-=bounceIntensity/10;
alarm[1]=3