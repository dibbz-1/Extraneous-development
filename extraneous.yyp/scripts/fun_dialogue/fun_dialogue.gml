// boy do I love storing all of my dialogue on one file. like what the hell else am I supposed to do though?

function text_id_is(_textid){
	
	switch(_textid){
		
		case "log0":
			//text_engine("ermm...",1,"beebo", "neutral");
			//text_engine("yo.",1,"ajohn", "neutral");
			//text_engine("what the freeak dude",1,"beebo", "neutral");
		break;
		
		// npc_dialogue \\
		case "log00":
			cutscene_event("ajohn mus");
			text_engine("Do you want to see an awesome trick?",0.5,"ajohn");
			scr_option("yes","yes");
			scr_option("no","no");
			cutscene_event("step");
		break;
		case "no":
			scn_ajohnTest.ajohnTrick=false;
			text_engine("aww.",0.5,"ajohn");
			cutscene_event("outside mus");
			cutscene_event("step");
		break;
		case "yes":
			scn_ajohnTest.ajohnTrick=true;
			text_engine("yay!",0.5,"ajohn");
			text_engine("Watch this",0.5,"ajohn");
			cutscene_event("step");
		break;
		case "trick over":
			text_engine("that was awesome, huh?",0.5,"ajohn");
			cutscene_event("outside mus");
			cutscene_event("step");
		break;
		
		case ("fight test"):
			text_engine("ew, a worm.",0.5,"beebo");
			cutscene_event("fight step");
		break;
		
		// fight dialogue \\
		
		case ("fightlog test"):
			text_engine("You are met with a foe of unknown power.", 1);
		break;
		case ("player turn"):
			text_engine("What would you like to do?", 1, "top");
			scr_option("attack","fight.attack");
			scr_option("skip","fight.item");
			cutscene_event("fight step");
		break;
		
		case "log_locked":
			text_engine("locked.",1,"beebo","neutral");
		break;
	}	

}

function port_id_is(_portraitid){
	

}