/// @description hit animation
if first audio_play_sound(snd_hit,1,0); first=false;
x=_x+bounce;
bounce-=bounceIntensity/10;
alarm[1]=3