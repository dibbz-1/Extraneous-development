/// @description end attack
if global.enemyTurn=enemyCount-1{
	global.fightingState=3;
} else{
	global.enemyTurn++; 
}
alarmStarted=false;
bullets=0;