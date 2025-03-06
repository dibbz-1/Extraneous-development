if first audio_play_sound(snd_hit,1,0); first=false;
x=_x+bounce;
bounce-=bounceIntensity/10;
show_debug_message(bounce);
alarm[1]=3