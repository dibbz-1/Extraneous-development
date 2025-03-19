/// @description end attack
if global.enemyTurn==global.enemyCount{
	global.fightingState=3;
	global.enemyTurn=0;
} else{
	global.enemyTurn++; 
}
alarmStarted=false;
bullets=0;