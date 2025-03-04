var _keyboard_accept = keyboard_check_pressed(ord("Z"));
var _keyboard_skip = keyboard_check_pressed(ord("X"));
var charx = 0;
var chary = 0;

//debug shit

//draw_text(50,50,txtbox_y);
//draw_text(50,75,txtbox_x);
//draw_text(50,50,draw_char);
//draw_text(75,50,option_pos);
//cutscenes
if page>=page_number instance_destroy();
if event[page]==""
{
	txtbox_x = 430 - (txtbox_width/2);
	var portrait_x = txtbox_x 
	txtbox_y = 460;
	var portrait_y = txtbox_y - txtbox_height;

	//------more setup
	if setup==false {
		setup = true;

	
		//pages
		for (var p = 0; p <= page_number; p++){
		
			//characters per page
			if event[p]==""{
				text_length[p] = string_length(text[p]);
		
				var text_xoffset = 25;
			}
		}	
	}

	switch (side[page]){
		case "L":
			portrait_x = 168; 
			portrait_y = 275;
			charx = 175;
			chary = 300;
		break;
		case "R":
			portrait_x = 572; 
			portrait_y = 275; 
			charx = 579; 
			chary = 300;
		break;
		case "T":
			txtbox_y = 20;
		break;
		case "":
			portrait_x = 168; 
			portrait_y = 275;
			charx = 175;
			chary = 300;
		break;
	}


	//------------type
	if draw_char < text_length[page]{
		draw_char += text_spd[page];
		draw_char = clamp(draw_char, 0, text_length[page])
		type_sound(sound[page])
		print_fin = false;
	}

	//-------typing finished?
	if (draw_char == text_length[page]) print_fin = true;

	//-------page flip
	
	if _keyboard_accept{
		
		//if done typing
		if draw_char == text_length[page]{
			
			if event[page+1]!="step"{
				
				if page != page_number {
					page++;
					draw_char = 0;
					show_debug_message("boo");
				} else if page==page_number-1{
					if (option_pos >= 0){
						create_text(option_link_id[option_pos]);
						show_debug_message("doo");
					}
					instance_destroy();
				}
				
			} else {
				global.cutStep++;
				if (option_pos >= 0){
					create_text(option_link_id[option_pos]);
					show_debug_message("doo");
				}
				instance_destroy();
			}
				
		}
	}
	if event[page]==""{
		if _keyboard_skip{
			//skipping
			if draw_char < text_length[page]{
				draw_char = text_length[page];
			}
		}

		//----draw textbox
		var _txtboX = txtbox_x + 25;
		var _txtboY = txtbox_y
		var txtb_spr_width = sprite_get_width(spr_txtbox);
		var txtb_spr_height = sprite_get_height(spr_txtbox);
		draw_sprite_ext(txtb_sprite, 0, _txtboX, _txtboY, txtbox_width/txtb_spr_width, txtbox_height/txtb_spr_height, 0, c_white, 1)

		//setup

		//----draw portrait background
		if global.fightingState==0{
			if !(portrait[page] == spr_none){
				txtb_spr_width = sprite_get_width(spr_txtbox);
				txtb_spr_height = sprite_get_height(spr_txtbox);
	
				//draw_sprite_ext(portrait_back, 0, portrait_x, portrait_y, portrait_wh/txtb_spr_width, portrait_ht/txtb_spr_height, 0, c_white, 1);
	
				//char
			
				draw_sprite_ext(portrait[page],sub,charx,chary,2.5,2.5,0,c_white,1);
	
			
			}
		}
		if cutState==cutsceneStates.active && char[page]!="top"{
			switch char[page]{
				case "ajohn":
					obj_cameraManager.gliding=3;
				break;
		
				case "beebo":
					obj_cameraManager.gliding=2;
				break;
				
				case "enemy":
					obj_cameraManager.gliding=7;
				break;
					
				default:
					obj_cameraManager.gliding=1;
				break;
		
			}
		}

		//---------options
		if draw_char = text_length[page] && page == page_number-1
		{
			// font setup
			//draw_set_font(fnt_default_small);
	 
			//selection
			option_pos += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);
			option_pos = clamp(option_pos, 0, option_number);
	
			var _opspace = 30; 
			var _opborder = 4;
			for(var op = 0; op <= option_number; op++)
			{
				//option box
				var _ow = string_width(option[op]) +_opborder*2;
				draw_sprite_ext(txtb_sprite, 0, _txtboX+16, _txtboY-_opspace*option_number-_opspace*op, _ow/txtb_spr_width, (_opspace-1)/txtb_spr_height, 0, c_white, 1);
		
				//arrow
				if option_pos == op {
		
					draw_sprite(spr_optionselect,arrowsub,_txtboX-50,_txtboY-_opspace*option_number-_opspace*op - 20);
		
				}
		
				//text
		
				draw_text_transformed(_txtboX+16+_opborder, _txtboY-_opspace*option_number-_opspace*op, option[op],0.75,0.75,0)
			}
		}


		//------------text
		var _drawtext = string_copy(text[page],1,draw_char);
		try{
			if side[page]=="T"{
				draw_text_ext(_txtboX + border, _txtboY + border+10, _drawtext, line_sep, line_width);
			} else{
				draw_text_ext(_txtboX + border, _txtboY + border, _drawtext, line_sep, line_width);
			}
		} 
		catch(except){
			show_debug_message("you suck blehh");
		}
	}
} else {
	show_debug_message(event[page])
	switch event[page]{
		case "fight goober":
			start_fight("guy");
		break;
		
		case "focus beebo":
			cutState = cutsceneStates.active;
			obj_cameraManager.gliding=5;
		break;
		
		case "focus ajohn":
			cutState = cutsceneStates.active;
			obj_cameraManager.gliding=3;
		break;
		
		case "fight step":
			global.fightingState++;
			//show_debug_message("boo");
			
		break;
		
		case "focus off":
			cutState = cutsceneStates.active;
			obj_cameraManager.gliding=1;
		break;
		
		case "cutscene test":
			global.mus = audio_play_sound(mus_ajohnTheme,1,1);
		break;
		
		case "ajohn mus":
			audio_stop_all();
			global.mus = audio_play_sound(mus_ajohnTheme,1,1);	
		break;
		
		case "outside mus":
			audio_stop_all();
			global.mus = audio_play_sound(mus_outside,1,1);	
		break;
		
		case "mus stop":
			global.mus = noone;
			audio_stop_all();
		break;
		case "step":
			++global.cutStep;
			show_debug_message("dick");
		break;
	}
	if page!=page_number page++;
}