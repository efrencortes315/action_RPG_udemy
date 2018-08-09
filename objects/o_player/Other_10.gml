/// @description move
	/// @description 
// You can write your code in this editor

image_speed=0;
var _animation_speed = 0.6; //yellow means local variable
var _x_input = keyboard_check(vk_right)-keyboard_check(vk_left); //keyboard_check will continue to be true as long as the key is held
//keyboard check will return 1 if true, so it will be 1 if right and -1 if left
var _y_input = keyboard_check(vk_down)-keyboard_check(vk_up);
_input_direction =  point_direction(0,0,_x_input, _y_input);// takes two points in space and returns a direction
var _attack_input = keyboard_check_pressed(vk_space); //true once, even if held, to be true again, it must be released and pressed again
	


if _x_input == 0 && _y_input ==0{
	//no movement is occurring
	image_index = 0; //brings sprite back to resting position
	image_speed=0;
	apply_friction_to_movement_entity(); //this script slows the character to a stop
}else{
	get_direction_facing();
	if(_x_input!=0){
		image_xscale = _x_input;
	}
	image_speed=.6;
	add_movement_maxspeed(_input_direction,	acceleration_,max_speed_);
}

if(_attack_input == true){
image_index = 0;
state_= player.sword;
}


move_movement_entity(false);