// boy do I love storing all of my dialogue on one file. like what the hell else am I supposed to do though?

function text_id_is(_textid){
	var fight = obj_fightmanager;
	switch(_textid){
		
		case "log00":
			text_engine("ermm...",1,"beebo");
			text_engine("yo.",1,"ajohn");
			text_engine("what the freeak dude",1,"beebo");
			text_engine("You wanna see something awesome?",1,"ajohn");
			scr_option("sure.","ajohntrickyes")
			scr_option("no.","ajohntrickno")
		break;
		case "ajohntrickyes":
			scn_ajohnTest.ajohnTrick=true;
			text_engine("baller.",1,"ajohn");
			cutscene_event("step");
		break;
		case "ajohntrickno":
			scn_ajohnTest.ajohnTrick=false;
			text_engine("aw man...",1,"ajohn");
			cutscene_event("step");
		break;
		case "trick over":
			text_engine("sick, huh?",1,"ajohn");
			text_engine("I guess",1,"beebo");
			cutscene_event("step");
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
		break;
		
		// chest dialogue \\
		case "gold chest":
			text_engine(string("Beebo found {0} gold!", global.goldChest),1,"top");
			//cutscene_event("step reset");
		break;
		
		// shop dialogue \\
		case "log.shopGreet":
			text_engine("oh, hey lil dude.", 0.7, "squeeze");
			cutscene_event("step");
		break;
		case "log.shopOpt":
			text_engine("what can I do for ya?", 1,"squeeze")
			scr_option("talk","shopTalk");
			scr_option("buy","shopBuy");
			scr_option("sell","shopTalk");
			scr_option("bye.","shopLeave");
		break;
		case "shopLeave":
			text_engine("See you around I guess.", 1,"squeeze")
			cutscene_event("step");
		break;
		case "shopBuy":
			text_engine("alright, here are your options", 1, "squeeze");
			scr_option(string("Sword: ${0}",global.itemDat.sword.price),"shopSwd");
			scr_option(string("Wizard Bar: ${0}",global.itemDat.wizbar.price),"shopWB");
			scr_option(string("Doobie: ${0}",global.itemDat.doobie.price),"shopDoob");
			scr_option("nevermind.","log.shopOpt");
		break;
		case "shopTalk":
			text_engine("what do you wanna know?",1,"squeeze");
			scr_option("stain","shopStain");
			scr_option("stickers","shopStickers");
			scr_option("mob","shopMob");
			scr_option("nevermind.","log.shopOpt");
		break;
		case "shopStain":
			text_engine("huhuh... I greened out earlier, sorry if it smells.",1,"squeeze");
			cutscene_event("stepReset");
		break;
		case "shopStickers":
			text_engine("oh, these? these are my soberstickers. they were supposed to help me quit drinking.",1,"squeeze");
			text_engine("now I just smoke weed.",1,"squeeze");
			cutscene_event("stepReset");
		break;
		case "shopMob":
			text_engine("Oh, you ran into some grunts didn't you?",1,"squeeze");
			text_engine("Most of them around here are easy to deal with, but the closer you get to the city the more dangerous they are.",1,"squeeze");
			text_engine("If you have plans on going the city, be real carefull.",1,"squeeze");
			cutscene_event("stepReset");
		break;
		case "shopWB":
			if global.gold>=global.itemDat.wizbar.price{
				global.gold-=global.itemDat.wizbar.price;
				array_push(global.items,"Unflavored Wizard Bar");
				text_engine("I guess you look 21...",1,"squeeze");
				text_engine("Here you go. Flavored vapes got banned in the valley this year, so you're stuck with that shitty one.",0.7,"squeeze");
				cutscene_event("stepReset");
			} else {
				text_engine("You don't have enough money for that.",1,"squeeze");
				cutscene_event("stepReset");
			}
		break;
		case "shopSwd":
			if global.gold>=global.itemDat.sword.price{
				global.gold-=global.itemDat.sword.price;
				array_push(global.items,"Basic Sword");
				text_engine("Be careful with that, it's really dull.",0.7,"squeeze");
				cutscene_event("stepReset");
			} else {
				text_engine("You don't have enough money for that.",1,"squeeze");
				cutscene_event("stepReset");
			}
		break;
		case "shopDoob":
			if global.gold>=global.itemDat.doobie.price{
				global.gold-=global.itemDat.doobie.price;
				array_push(global.items,"Doobie");
				text_engine("Here you go. Thank god for the president or else this shit would be illegal still.",0.7,"squeeze");
				cutscene_event("stepReset");
			} else {
				text_engine("You don't have enough money for that.",1,"squeeze");
				cutscene_event("stepReset");
			}
		break;
		
		// fight dialogue \\
		case ("player turn"):
			text_engine("Beebo's turn", 1, "top");
			scr_option("attack","fight.attack");
			scr_option("item","fight.item");
			scr_option("skill","fight.skill");
			scr_option("defend","fight.defend");
		break;
		case ("ajohn turn"):
			text_engine("Ajohn's turn", 0.8, "top");
			scr_option("attack","fight.attack");
			scr_option("item","fight.item");
			scr_option("skill","afight.skill");
			scr_option("defend","fight.defend");
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
		break;
		case "fight.win":
			text_engine("Beebo and Ajohn were victorious!",0.8,"top");
			text_engine(string("Beebo recieved {0} experience points!",fight.beeboXP),0.8,"top");
			text_engine(string("Ajohn recieved {0} experience points!",fight.ajohnXP),0.8,"top");
			text_engine(string("The party recieved ${0}!",fight.gold),0.8,"top");
			cutscene_event("fight step");
			global.gold+=fight.gold;
			global.charDat.beebo.xp+=fight.beeboXP;
			global.charDat.ajohn.xp+=fight.ajohnXP;
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
		break;
	}	
	
}

function port_id_is(_portraitid){
	

}