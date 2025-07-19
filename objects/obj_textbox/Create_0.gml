// Textbox Parameters
textbox_width  = 240; // or dynamic if you want
textbox_height = 64;
border = 8;
line_sep = 15;
line_width = textbox_width - border * 2;
txtb_sprite = spr_textbox;
txtb_image = 0;
txtb_image_spd = 0;

//The Text
page = 0;
page_number = 0;
text[0] = "text";

text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 0.5;

setup = false;
