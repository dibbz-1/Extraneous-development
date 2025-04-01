/// @description Insert description here
// You can write your code in this editor
global.plrMove = 0;
obj_ajohn.interact=false;
instance_create_layer(0,0,"characters",obj_cutsceneManager);
audio_stop_all();
global.mus=audio_play_sound(mus_ajohn,1,0);
create_text("log00");
counter=0;
ajohnTrick=false;