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
			text_engine("yo.", 1, "ajohn");
			text_engine("check this out.", 1, "ajohn");
			cutscene_event("step");
		break;
		
		case "log01":
			text_engine("that was...",0.5,"beebo");
			text_engine("sick as hell?",1,"ajohn");
			text_engine("I was thinking more...",1,"beebo");
			text_engine("dumb as hell.",1,"beebo");
			text_engine("ouch.",1,"ajohn");
			text_engine("I thought it was neat.",1,"ghost");
			text_engine("aw, thanks man!",1,"ajohn");
			text_engine("teehee!",1,"ghost");
			cutscene_event("outside mus");
			cutscene_event("step");
		break;
		
		case ("fight test"):
			text_engine("what the hell are you supposed to be?.",0.5,"beebo");
			text_engine("I'm a bug or something, I dunno.",0.5,"enemy");
			text_engine("okay well we're about to kick your ass so get ready.",0.5,"ajohn");
			text_engine("up yours.",0.5,"enemy");
			cutscene_event("fight step");
		break;
		
		// fight dialogue \\
		
		case ("fightlog test"):
			text_engine("You are met with a foe of unknown power.", 1);
		break;
		
		case "log_locked":
			text_engine("locked.",1,"beebo","neutral");
		break;
	}	

}

function port_id_is(_portraitid){
	

}