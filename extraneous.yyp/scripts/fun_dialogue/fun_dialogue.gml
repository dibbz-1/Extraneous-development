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
		case "log.intro3":
			text_engine("A- am I dreaming or something? What the hell is this?",0.7,"beebo");
			text_engine("I understand that this is a lot right now but I need you to calm down. Do you remember anything from before you woke up here?",0.7,"ajohn");
			text_engine("Well... not really... I remember not being pink though, what's up with that?",0.7,"beebo");
			text_engine("Everyone here looks a but odd, but you'll get used to it. Come, My child. It's not safe here.",0.6,"ajohn");
			cutscene_event("step");
		break;
		case "log.intro4":
			text_engine("I don't think you ever answered my questions.",0.7,"beebo");
			text_engine("Well, I am ajohn. I wait out here for lost souls so I can guide them to my town.",0.7,"ajohn");
			text_engine("Lost souls?? What does that mean?",0.7,"beebo");
			text_engine("I think that's better left unsaid for the time being...",0.7,"ajohn");
			text_engine("No, I'd like to know. I can handle it.",0.7,"beebo");
			text_engine("You're... You're in limbo. You're dead.",0.7,"ajohn");
			cutscene_event("step");
		break;
		case "log.intro5":
			text_engine("WHAT!???",0.9,"beebo");
			text_engine("AHA! I see you are both distressed by my sudden presence!",0.9,"cifi");
			cutscene_event("step");
		break;
		case "log.intro6":
			text_engine(".. who is this?",0.9,"beebo");
			text_engine(".. This is cifirie. She's not really a threat.",0.5,"ajohn");
			text_engine("WE'LL SEE ABOUT THAT!",0.9,"cifi");
			cutscene_event("step");
		break;
		case "fight.cifiStart":
			text_engine("YOU FOOLISH- uh- BEINGS..! You DARED anger me with your insults, and now you will pay!",0.9,"enemy");
			text_engine("That's not fair! I just told this guy he's in limbo, how the hell do you expect him to fight??",0.9,"ajohn");
			text_engine("I should be fine, let's just get this over with so I can process this whole thing.",0.9,"beebo");
			text_engine("alright, here's the basics of fighting. first you decide who's turn it is.",0.9,"ajohn");
			text_engine("If you don't want to go for whatever reason you can select my banner instead of your own.",0.9,"ajohn");
			text_engine("Huh?",0.9,"beebo");
			text_engine("Nevermind. Once you decide who's going, you can choose to use an item, a skill, or just defend.",0.9,"ajohn");
			text_engine("Those all seem pretty self explanitory.",0.9,"beebo");
			text_engine("Can we go now?",0.9,"enemy");
			text_engine("Yeah, let's go. I think we're all set.",0.9,"ajohn");
			text_engine("Try attacking first.",0.9,"ajohn");
			cutscene_event("fight step");
			cutscene_event("step");
		break;
		
		// shop dialogue \\
		case "log.shopGreet":
			text_engine("uhhh... sorry dude I'm like so damn high right now huhuh...", 0.7, "squeeze");
			cutscene_event("step");
		break;
		case "log.shopOpt":
			text_engine("what can I you do you you for?", 0.7,"squeeze")
			scr_option("talk","shopTalk");
			scr_option("buy","shopBuy");
			scr_option("sell","shopTalk");
			scr_option("bye.","shopTalk");
			cutscene_event("step");
		break;
		case "shopBuy":
			text_engine("alright, here are your options", 0.7, "squeeze");
			scr_option("sword","shopSwd");
			scr_option("doobie","shopDoob");
			scr_option("wizard bar","shopWB");
			scr_option("nevermind.","log.shopOpt");
			cutscene_event("step");
		break;
		case "shopTalk":
			text_engine("sure, what do you wanna know?",0.7,"squeeze");
			scr_option("stain","shopStain");
			scr_option("stickers","shopStickers");
			scr_option("mob","shopMob");
			scr_option("nevermind.","log.shopOpt");
			cutscene_event("step");
		break;
		case "shopStain":
			text_engine("huhuh... I greened out earlier, sorry if it smells.",0.7,"squeeze");
			cutscene_event("stepReset");
		break;
		case "shopWB":
			array_push(global.items,"Unflavored Wizard Bar");
			text_engine("I guess you look 21...",0.7,"squeeze");
			text_engine("Here you go. Flavored vapes got banned in the valley this year, so you're stuck with that shitty one.",0.7,"squeeze");
			cutscene_event("stepReset");
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
		case "Cifirie":
			if fight.turn==0 fight.beeboTarg="Cifirie";
			else if fight.turn==1 fight.ajohnTarg="Cifirie";
			cutscene_event("fight step")
			cutscene_event("step")
		break;
	}	
	
}

function port_id_is(_portraitid){
	

}