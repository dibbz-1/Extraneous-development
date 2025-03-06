x=_x-bounce;
bounce-=bounceIntensity/10;
show_debug_message(bounce);
if !bounce==0 alarm[0]=3;
else alarm[2]=40;