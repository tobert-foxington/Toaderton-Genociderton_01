if image_index = 0 && (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))){
	image_index = 1;
	
} else if image_index = 1 && (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))){
	image_index = 2;
	
} else if image_index = 2 && (keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))){
	image_index = 3;
	
} else if image_index = 3 && (keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))){
	image_index = 2;
	
} else if image_index = 2 && (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))){
	room_goto(startRoom);
	var instantiated = instance_create_layer(startX,startY,"Player",obj_player);
	

}