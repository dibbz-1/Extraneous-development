CAM_WIDTH=288
CAM_HEIGHT=216

focus="player";
width=288;
height=216;
xPos=obj_player.x;
yPos=obj_player.y;
gliding=0;



zoomFinished=false;
//music management

global.mus=audio_play_sound(mus_outside,1,1);


//cutscene step
global.cutStep=0;

//fighting?
global.fightingState=0;

/* gliding cases

1 - player focus moving
2 - player focus zoomed
3 - ajohn focus zoomed
4 - test (obselete)
5 - fight transition
6 - fight default
7 - enemy focus
8 - fight player turn
9 - player dodge
10 - both player dodge