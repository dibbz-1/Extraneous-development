/// @description end attack
if global.enemyTurn=enemyCount-1{
	global.fightingState=3;
	global.enemyTurn=0;
} else{
	global.enemyTurn++; 
}
alarmStarted=false;
bullets=0;