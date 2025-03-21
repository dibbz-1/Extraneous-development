//music setup
global.mus=audio_play_sound(mus_outside,1,1);

//cutscene step
global.cutStep=0;

//fight setup
global.fightingState=0;
global.enemy[0]="";
global.enemyKill=noone;

//text setup
draw_set_font(fnt_default);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
