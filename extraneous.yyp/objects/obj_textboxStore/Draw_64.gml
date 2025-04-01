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
else if event[page]==""
{
	txtbox_x = 13;
	txtbox_y = 13;

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

	//-------page flip
	
	if _keyboard_accept{
		if pause{
			pause=false;
			text_spd[page]=text_spd_actual; 
		}
		
		//if done typing
		if draw_char == text_length[page]{
			try{
				nextEvent=event[page+1]
			} catch(except){
				nextEvent="";
			}
			if nextEvent==""{
				
				if page != page_number {
					page++;
					draw_char = 0;
					
				} else if page==page_number{
					if (option_pos >= 0){
						create_store_text(option_link_id[option_pos]);
					}
					instance_destroy();
				}
				
			} else if nextEvent=="step"{
				global.cutStep++;
				if (option_pos >= 0){
					create_store_text(option_link_id[option_pos]);
				}
				instance_destroy();
			} else if nextEvent=="stepReset"{
				global.cutStep=1;
				if (option_pos >= 0){
					create_store_text(option_link_id[option_pos]);
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

		//---------options
		if draw_char = text_length[page] && page == page_number
		{
			// font setup
			//draw_set_font(fnt_default_small);
	 
			//selection
			var top=array_length(option)-1
			
			if keyboard_check_pressed(vk_down){
				option_pos++;
				if option_pos>top option_pos=0; 
			}
			if keyboard_check_pressed(vk_up){
				option_pos--
				if option_pos<0 option_pos=top;
			}
			
	
			var _opspace = 30; 
			for(var op = 0; op <= option_number; op++)
			{
				if option_pos == op{
					draw_text_transformed(_txtboX+15, _txtboY+200+_opspace*op, option[op],1,1,0)
					draw_sprite_ext(spr_optionselect, arrowsub, _txtboX+100+string_width(option[op]), _txtboY+183+_opspace*op,-1,1,0,c_white,1);
					
				}
				else{
					draw_text_transformed(_txtboX+15, _txtboY+200+_opspace*op, option[op],0.75,0.75,0)
					draw_text_transformed(_txtboX+15, _txtboY+200+_opspace*op, option[op],0.75,0.75,0)
					
				}
		
				//text
		
				

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
	switch event[page]{
		case "step":
			++global.cutStep;
		break;
		case "stepBack":
			--global.cutStep;
		break;
		case "stepReset":
			global.cutStep=1;
		break;
	}
                                                                                                                                                                                     
}