// boy do I love storing all of my dialogue on one file. like what the hell else am I supposed to do though?

function text_id_is(_textid){
	var fight = obj_fightmanager;
	switch(_textid){
		
		case "log0":
			//text_engine("ermm...",1,"beebo", "neutral");
			//text_engine("yo.",1,"ajohn", "neutral");
			//text_engine("what the freeak dude",1,"beebo", "neutral");
		break;
		
		// npc_dialogue \\
		case "log.intro":
			text_engine("Uhg-",0.3,"beebo");
			text_engine("What the-",0.5,"beebo");
			text_engine("WHERE THE HELL AM I??",0.9,"beebo");
			cutscene_event("step");
		case "log.intro2":
			text_engine("Good, you're finally awake.",0.3,"ajohn");
			text_engine("Who are you? W- where are you?",0.5,"beebo");
			text_engine("Please relax, my child. I will not hurt you.",0.5,"ajohn");
			cutscene_event("step");
		break;
		case ("fight test"):
			text_engine("ew, a worm.",0.8,"beebo");
			cutscene_event("fight step");
		break;
		
		// fight dialogue \\
		case ("player turn"):
			text_engine("Beebo's turn", 1, "top");
			scr_option("attack","fight.attack");
			scr_option("item","fight.item");
			scr_option("skill","fight.skill");
			scr_option("defend","fight.defend");
			cutscene_event("step");
		break;
		case ("ajohn turn"):
			text_engine("Ajohn's turn", 0.8, "top");
			scr_option("attack","fight.attack");
			scr_option("item","fight.item");
			scr_option("skill","afight.skill");
			scr_option("defend","fight.defend");
			cutscene_event("step");
		break;
		case "fight.attack":
			if fight.turn==0 fight.playerAct="attack";
			else if fight.turn==1 fight.ajohnAct="attack";
			text_engine("Which enemy?", 0.8, "top");
			for (var i=0; i<array_length(global.enemy); i++){
				if !(global.enemy[i]=="DEAD"){
					scr_option(global.enemy[i],global.enemy[i]);
				}
			}
			cutscene_event("step");
		break;
		case "fight.defend":
			if fight.turn==0 fight.playerAct="defend";
			else if fight.turn==0 fight.ajohnAct="defend";
			cutscene_event("fight step");
		break;
		case "fight.item":
			fight.playerAct="item";
			text_engine("which item would you like to use?", .8, "top");
			for (var i=0; i<array_length(global.items); i++){
				scr_option(global.items[i],global.items[i]);
			}
			cutscene_event("step");
		break;
		case "fight.win":
			text_engine("Beebo and Ajohn were victorious!",0.8,"top");
			text_engine(string("Beebo recieved {0} experience points!",fight.beeboXP),0.8,"top");
			text_engine(string("Ajohn recieved {0} experience points!",fight.ajohnXP),0.8,"top");
			text_engine(string("The party recieved ${0}!",fight.gold),0.8,"top");
			cutscene_event("fight step");
			cutscene_event("step");
		break;
		case "promethazine":
			if fight.turn==0{
				text_engine("I can't put down the cup.",0.5,"beebo");
				text_engine("Beebo regained 20 HP!",0.5,"top");
				with fight{
					beebo_hp+=20;
					if (beebo_hp>beebo_maxhp) beebo_hp-=(beebo_hp-beebo_maxhp);
				}
			} else if fight.turn==1{
				text_engine("I can't put down the cup.",0.5,"ajohn");
				text_engine("Ajohn regained 20 HP!",0.5,"top");
				with fight{
					ajohn_hp+=20 ;
					if (ajohn_hp>ajohn_maxhp) ajohn_hp-=(ajohn_hp-ajohn_maxhp);
				}
			}
				
			cutscene_event("fight step");
		break;
		case "log_locked":
			text_engine("locked.",1,"beebo","neutral");
			cutscene_event("step");
		break;
		
		case "Bug A":
			if fight.turn==0 fight.beeboTarg="Bug A";
			else if fight.turn==1 fight.ajohnTarg="Bug A";
			cutscene_event("fight step");
		break;
		case "Bug B":
			if fight.turn==0 fight.beeboTarg="Bug B";
			else if fight.turn==1 fight.ajohnTarg="Bug B";
			cutscene_event("fight step");
		break;
		case "Bug C":
			if fight.turn==0 fight.beeboTarg="Bug C";
			else if fight.turn==1 fight.ajohnTarg="Bug C";
			cutscene_event("fight step");
		break;
		case "Worm A":
			if fight.turn==0 fight.beeboTarg="Worm A";
			else if fight.turn==1 fight.ajohnTarg="Worm A";
			cutscene_event("fight step")
		break;
		case "Worm B":
			if fight.turn==0 fight.beeboTarg="Worm B";
			else if fight.turn==1 fight.ajohnTarg="Worm B";
			cutscene_event("fight step")
		break;
		case "Worm C":
			if fight.turn==0 fight.beeboTarg="Worm C";
			else if fight.turn==1 fight.ajohnTarg="Worm C";
			cutscene_event("fight step")
		break;
	}	

}

function port_id_is(_portraitid){
	

}