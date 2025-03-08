targ=obj_player;
var pwr=obj_fightmanager.playerAttPwr;

if pwr>80 sprite_index=spr_crit;
else if pwr>50 sprite_index=spr_great;
else if pwr>20 sprite_index=spr_ok;
else sprite_index=spr_weak;

image_xscale=0.5;
image_yscale=0.5;

x=targ.x;
y=0;
gliding=0;