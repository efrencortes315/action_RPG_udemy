/// @description move (base state)
	/// @description 
// You can write your code in this editor

image_speed=0;
var _animation_speed = 0.6; //yellow means local variable
var _x_input = o_input.right_-o_input.left_; //keyboard_check will continue to be true as long as the key is held
//keyboard check will return 1 if true, so it will be 1 if right and -1 if left
var _y_input =o_input.down_-o_input.up_;
_input_direction =  point_direction(0,0,_x_input, _y_input);// takes two points in space and returns a direction
var _attack_input = o_input.action_one_pressed_; //true once, even if held, to be true again, it must be released and pressed again
var _roll_input = o_input.action_two_pressed_;
roll_direction_= direction_facing_ * 90; //also just try input_direction and see

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
	roll_direction_= direction_facing_ * 90; //also just try input_direction and see
}

if(_attack_input == true){
image_index = 0;
state_= player.sword;
}
if(_roll_input == true){
image_index=0;
state_= player.roll;
}


move_movement_entity(false);