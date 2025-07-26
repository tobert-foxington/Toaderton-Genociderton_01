right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
run_key = keyboard_check(vk_shift);

// get xspd and yspd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

if run_key == true {move_spd = 2};
if run_key == false {move_spd = 1};

if obj_player.can_move == true {move_spd = 1};
if obj_player.can_move == false {move_spd = 0};

// pause
if instance_exists(obj_pauser)
{
	xspd = 0;
	yspd = 0;
}


//set sprite
mask_index = sprite[DOWN];
if yspd == 0
{
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};
}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};
sprite_index = sprite[face];


// This is the collisions code
if place_meeting( x + xspd, y, obj_wall ) == true
	{
	xspd = 0;
	}


if place_meeting( x, y + yspd, obj_wall ) == true
	{
	yspd = 0;
	}
	
	
x += xspd;
y += yspd;


if(can_move){
}


//anomateeiodfsdf
if xspd = 0 && yspd == 0
{
	image_index = 0;
}

//depth
depth = -bbox_bottom;