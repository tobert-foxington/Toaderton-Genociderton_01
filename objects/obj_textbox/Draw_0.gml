confirm_key = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
skip_key = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);

var margin = 8;

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

textbox_x = view_x + (view_w - textbox_width) / 2;
textbox_y = view_y + view_h - textbox_height - margin;

//setup
if(setup == false) {
	setup = true;
	
	obj_player.can_move = false;
	
	draw_set_font(Fnt_Text);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//Loop Thru The Pages
	page_number = array_length(text);
	for (var p = 0; p < page_number; p++){
		
		// find how many characters are on each page and store that number in text length array
		text_length[p] = string_length(text[p]);
		
		//getting the x pos for the textbox when there i no character portrait (center_textbox)
		text_x_offset[p] = 21;
	}
}

//typewriter effect
if draw_char < text_length[page] {
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);	
}

//flip thru pages
if confirm_key {
	//if the typing is done
	if draw_char == text_length[page]{
		//next page
		if page < page_number-1 {
			page++
			draw_char = 0;
		} else 
		//destroy textbox
		{
			obj_player.can_move = true;
			instance_destroy();
		}
	} 
} else if skip_key && draw_char != text_length[page]{
	//fill the page
	draw_char = text_length[page];
}

//draw textbox
txtb_image += txtb_image_spd;
txtb_sprite_w = sprite_get_width(txtb_sprite);
txtb_sprite_h = sprite_get_height(txtb_sprite);

draw_sprite_stretched(txtb_sprite, txtb_image, textbox_x, textbox_y, textbox_width, textbox_height);



//draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
var text_padding = 6;
draw_text_ext(textbox_x + text_padding, textbox_y + text_padding, _drawtext, line_sep, line_width);
