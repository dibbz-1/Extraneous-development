function text_engine(_text,_speed,_char=0,_emote = "neutral"){
	page_number++;
	char[page_number]=_char;
	event[page_number]="";
	text[page_number] = _text;
	text_spd[page_number] = _speed;
	
	switch(_char){
		case "ghost":
			portrait[page_number] = spr_ghost;
			side[page_number] = "L";
			sound[page_number]="bap";
		break;
		case "top":
			portrait[page_number] = spr_none;
			side[page_number] = "T";
			sound[page_number]="bap";
		break;
		case "enemy":
			portrait[page_number] = spr_bug;
			side[page_number] = "L";
			sound[page_number]="bap";
		break;
		case "lilman":
			portrait[page_number] = spr_lilman;
			side[page_number] = "R";
			sound[page_number]="bap";
		break;
		case "ajohn":
			side[page_number] = "R";
			sound[page_number]="bup";
			switch _emote{
				case "neutral":
					portrait[page_number] = spr_ajohnportneut; 
				break;
			}
				
		break;
		case "beebo":
			side[page_number] = "L";
			sound[page_number]="bap";
			switch _emote{
				case "neutral":
					portrait[page_number] = spr_beebo_pNeutral; 
				break;
			}
				
		break;
		case 0:
			portrait[page_number] = spr_none;
			side[page_number] = "T";
			sound[page_number] = "bap";
		break;
		
	}
	

	
	//show_debug_message(text);
}

function cutscene_event(_event){
		page_number++;
		event[page_number]=_event;
		//show_debug_message(event);
}

function scr_option(_option, _link_id){
	option_number++;
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
}

function create_text(_textid){
	//show_debug_message("txt created");
	with(instance_create_depth(x,y,-9999,obj_textbox)){
		text_id_is(_textid);
			
	}
}

function create_text_top(_textid){
	with(instance_create_depth(x,y,-9999,obj_textbox)){
		text_id_is(_textid);
		
	}
}

//function create_portrait(_portrait){
//	with(instance_create_depth(x,y,-9999,obj_txtPortrait)){
//		portrait = _portrait;
//		port_id_is(_portrait)
//	}
//}

//function port_print(_spritetoprint,_side){
//	if instance_exists(obj_txtPortrait) instance_destroy(obj_txtPortrait);
//	with(instance_create_depth(x,y,-9999,obj_txtPortrait)){
//		portrait = _spritetoprint;
//		side = _side;
//	}
//}

function type_sound(_soundtoplay){
	switch(_soundtoplay){
		
		case("bap"):
		
		
			switch(irandom_range(0,3))
			{
				case(0):
					audio_play_sound(snd_npspeak_0,0,0);
				break;
				case(1):
					audio_play_sound(snd_npspeak_1,0,0);
				break;
				case(2):
					audio_play_sound(snd_npspeak_2,0,0);
				break;
				case(3):
					audio_play_sound(snd_npspeak_3,0,0);
				break;
			}
			
		break;
		case ("bup"):
		
			audio_play_sound(snd_test_speak,0,0);
	}
}