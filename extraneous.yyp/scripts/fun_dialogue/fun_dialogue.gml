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
			text_engine("What would you like Beebo to do?", 1, "top");
			scr_option("attack","fight.attack");
			scr_option("item","fight.item");
			scr_option("skill","fight.skill");
			scr_option("skip","fight.skip");
			cutscene_event("step");
		break;
		case ("ajohn turn"):
			text_engine("What would you like Ajohn to do?", 1, "top");
			scr_option("attack","afight.attack");
			scr_option("item","afight.item");
			scr_option("skill","afight.skill");
			scr_option("skip","afight.skip");
			cutscene_event("step");
		break;
		case "fight.attack":
			obj_fightmanager.playerAct="attack";
			text_engine("you attacked!", 1, "top");
			cutscene_event("fight step");
		break;
		case "afight.attack":
			obj_fightmanager.ajohnAct="attack";
			text_engine("you attacked!", 1, "top");
			cutscene_event("fight step");
		break;
		case "fight.item":
			obj_fightmanager.playerAct="item";
			text_engine("which item would you like to use?", 1, "top");
			for (var i=0; i<array_length(global.items); i++){
				scr_option(global.items[i],global.items[i]);
			}
			cutscene_event("step");
		break;
		case "promethazine":
			text_engine("I can't put down the cup.",0.5,"beebo");
			cutscene_event("fight step");
		break;
		case "log_locked":
			text_engine("locked.",1,"beebo","neutral");
			cutscene_event("step");
		break;
	}	

}

function port_id_is(_portraitid){
	

}