var power=obj_fightmanager.playerAttPwr;

if power>700 sprite_index=spr_crit;
else if power>300 sprite_index=spr_great;
else if power>100 sprite_index=spr_ok;
else sprite_index=spr_weak;