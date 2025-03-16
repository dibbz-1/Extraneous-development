depth = -9998
// SETUP

txtbox_x = 0;
txtbox_y = 0;
txtbox_width = 574;
txtbox_height = 160;
border = 8;
line_sep = 35;
line_width = txtbox_width-border*2;
txtb_sprite = spr_txtbox;

// TEXT
check=1;
started=true;
page = 1;
page_number = 0;
text[0] = ""
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd[page] = 0.1;
print_fin = 1;
sound[0] = "";
char[0]="";
event[0]="";
pause=false;

//portrait

sub = 0;
side[page] = "";
portrait_wh = 170;
portrait_ht = 170;
portrait_back = spr_txtbox;
portrait[page] = spr_none;

alarm[0] = 3;
// options
option[0] = "";
option_link_id[0] = 0;
option_number = -1;
option_pos = 0;
arrowsub = 0;
alarm[1] = 5;

// cutscene setup
enum cutsceneStates {
	active,
	paused
}
cutState=cutsceneStates.active;

// music assignments
mus=noone;

// end
setup = false;

draw_set_font(fnt_default);
draw_set_valign(fa_top);
draw_set_halign(fa_left);


//CREDTS: tutorial by @peytonburnham4316 on YouTube | VIDEO: https://www.youtube.com/watch?v=rEYSi0ahC5Q | 