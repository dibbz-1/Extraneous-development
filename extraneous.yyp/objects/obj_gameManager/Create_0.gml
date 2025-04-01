//music setup
global.mus=audio_play_sound(mus_outside,1,1);

//cutscene step
global.cutStep=0;

//fight setup
global.fightingState=0;
global.enemy[0]="";
global.enemyKill=noone;

//chest setup
global.goldChest=0;
global.itemChest=0;

//item setup
global.gold=0;
global.beebXP=0;
global.ajonXP=0;

//text setup
draw_set_font(fnt_default);
draw_set_valign(fa_top);
draw_set_halign(fa_left);


data_setup();