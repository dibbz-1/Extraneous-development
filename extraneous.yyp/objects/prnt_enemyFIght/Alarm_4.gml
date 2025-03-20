/// @description end attack
show_debug_message("attack is over");
show_debug_message(string_join(",",global.enemyTurn,global.enemyCount));
global.enemyTurn++; 
if global.enemyTurn==global.enemyCount{
	global.fightingState=3;
	global.enemyTurn=0;
}
alarmStarted=false;
bullets=0;