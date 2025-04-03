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

if page>page_number instance_destroy();

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



if _keyboard_accept{
	if pause{
		pause=false;
		text_spd[page]=text_spd_actual; 
	}
		
	//if done typing
	try{
		nextEvent=event[page+1];
	} catch(except){
		nextEvent=event[page];
	}
	if nextEvent=="" && event[page]=""{
		if draw_char == text_length[page]{
			if page != page_number {
				page++;
				draw_char = 0;
					
					
			} else if page==page_number{
				if (option_number >= 0){
					show_debug_message("option selected");
					create_text(option_link_id[option_pos]);
				}
				instance_destroy();
			}
		}		
	} else{
		if page_number==1 or draw_char == text_length[page]{
			switch nextEvent{
				case "step":
					global.cutStep++;
				break;
				case "fight step":
					global.fightingState++;
				break;
				case "stepReset":
					global.cutStep=1;
				break;
				case "stepBack":
					global.cutStep--;
				break;
			}
			
			if (option_number >= 0){
				show_debug_message("option selected");
				create_text(option_link_id[option_pos]);
			}
			instance_destroy();
		}
	}
}
if event[page]==""{
	//------------type
	if draw_char < text_length[page]{
		var currentChar = string_copy(text[page],draw_char,1);
		if currentChar=="." or currentChar=="?"{
			if text_spd[page]!=0 text_spd_actual=text_spd[page];
			text_spd[page]=0; 
			pause=true;
			draw_char++;
		} 
		if currentChar=="-" or currentChar==","{
			if text_spd[page]!=0 text_spd_actual=text_spd[page];
			text_spd[page]=0; 
			pause=true;
			draw_char++;
			alarm[2]=15;
		}
			
		
		draw_char += text_spd[page];
		draw_char = clamp(draw_char, 0, text_length[page])
		if !pause type_sound(sound[page])
		print_fin = false;
	}

	//-------typing finished?
	if (draw_char == text_length[page]) print_fin = true;

	if _keyboard_skip{
		//skipping
		if draw_char < text_length[page]{
			draw_char = text_length[page];
		} else if global.fightingState==4{
			instance_destroy();
			global.fightingState--; 
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
	if obj_cameraManager.cutGliding && char[page]!="top"{
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
				//obj_cameraManager.gliding=1;
			break;
		
		}
	}
		

	//---------options
	if draw_char = text_length[page] && page == page_number
	{
		// font setup
		//draw_set_font(fnt_default_small);
	 
		//selection
		var top=array_length(option)-1
			
		if keyboard_check_pressed(vk_up){
			option_pos++;
			if option_pos>top option_pos=0; 
		}
		if keyboard_check_pressed(vk_down){
			option_pos--
			if option_pos<0 option_pos=top;
		}
			
	
		var _opspace = 30; 
		var _opborder = 4;
		for(var op = 0; op <= option_number; op++)
		{
			//option box
			var _ow = string_width(option[op]) +_opborder*2;
			if side[page]!="T" draw_sprite_ext(txtb_sprite, 0, _txtboX+16, _txtboY-_opspace*option_number-_opspace*op, _ow/txtb_spr_width, (_opspace-1)/txtb_spr_height, 0, c_white, 1);
			else draw_sprite_ext(txtb_sprite, 0, _txtboX+16, _txtboY+txtbox_height+_opspace*option_number-_opspace*op, _ow/txtb_spr_width, (_opspace-1)/txtb_spr_height, 0, c_white, 1);
			//arrow
			if option_pos == op {
		
				if side[page]!="T" draw_sprite(spr_optionselect,arrowsub,_txtboX-50,_txtboY-_opspace*option_number-_opspace*op - 20);
				else draw_sprite(spr_optionselect,arrowsub,_txtboX-50,_txtboY+txtbox_height+_opspace*option_number-_opspace*op - 20);
		
			}
		
			//text
		
			if side[page]!="T" draw_text_transformed(_txtboX+16+_opborder, _txtboY-_opspace*option_number-_opspace*op, option[op],0.75,0.75,0)
			else  draw_text_transformed(_txtboX+16+_opborder, _txtboY+txtbox_height+_opspace*option_number-_opspace*op, option[op],0.75,0.75,0)
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