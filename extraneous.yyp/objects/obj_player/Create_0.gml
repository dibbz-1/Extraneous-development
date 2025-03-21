global.plrMove=true;
global.items=["silly","apple","promethazine"];
xSpd = 0;
ySpd = 0;
mvSpd = 2;
invincible=false;
pressed=false;

function fight_check(){
	for (var i=0; i<3; i++)
	{
		//
		randomize();
		var rand=round(random(2));
		show_debug_message(rand);
		if rand==0{
			//add bug to enemy array
			if !array_contains(global.enemy,"Bug A") array_push(global.enemy,"Bug A");
			else if !array_contains(global.enemy,"Bug B") array_push(global.enemy,"Bug B");
			else array_push(global.enemy,"Bug C");
		} else if rand==1{
			//add worm to enemy array
			if !array_contains(global.enemy,"Worm A") array_push(global.enemy,"Worm A");
			else if !array_contains(global.enemy,"Worm B") array_push(global.enemy,"Worm B");
			else array_push(global.enemy,"Worm C");
		}
	}
	array_delete(global.enemy,0,1);
	show_debug_message(global.enemy);
}
function fight_init(){
	fight_check();
	global.fightingState=1;	
	instance_create_depth(0,0,0,gpx_fight);
	audio_stop_all();
	global.mus=audio_play_sound(snd_fightStart,1,0);
}


alarm[0]=10;