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
			text_engine("DO you want to seean awesome trick?",0.5,"ajohn");
			scr_option("yes","yes");
			scr_option("no","no");
			cutscene_event("step");
		break;
		case "no":
			ajohnTrick=false;
			text_engine("aww.",0.5,"ajohn");
			cutscene_event("step");
			cutscene_event("outside mus");
		break;
		case "yes":
			ajohnTrick=true;
			text_engine("yay!",0.5,"ajohn");
			cutscene_event("step")
		break;
		case "trick finished":
			text_engine("that was awesome, huh?",0.5,"ajohn");
			cutscene_event("step");
			cutscene_event("outside mus");
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
			scr_option("item","fight.item");
			scr_option("special","fight.special");
			scr_option("pussy","fight.pussy");
			cutscene_event("fight step");
		break;
		
		case "log_locked":
			text_engine("locked.",1,"beebo","neutral");
		break;
	}	

}

function port_id_is(_portraitid){
	

}