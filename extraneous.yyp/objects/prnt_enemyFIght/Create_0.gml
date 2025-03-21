//alarm control

alarmStarted=false;
debug=false;

//bounce

bounceIntensity=0;
bounce=0;
first=true;
_x=x;

//bullets

bullets=0;
tut=false;
hitSpawn=0;
damage=0;
spawned=false;

//enemy management

global.enemyCount=array_length(global.enemy)-1;
enemyTurn="";
enemy = "";
enemy_hp = 100;
image_alpha = 1;
function enemy_turn_over(){
	show_debug_message(global.enemyTurn);
	global.enemyTurn++;
	if global.enemyTurn>global.enemyCount{
		global.fightingState=3;
		global.enemyTurn=0;
	}	
	alarmStarted=false;
	bullets=0;
}

//drawing damage

tAlpha=1;
xBounce=0;
yBounce=0;
txtX=0;
txtY=0;