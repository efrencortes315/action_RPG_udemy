	/// @description 
// You can write your code in this editor

image_speed=0;
var _animation_speed = 0.6; //yellow means local variable
var _x_input = keyboard_check(vk_right)-keyboard_check(vk_left);
//keyboard check will return 1 if true, so it will be 1 if right and -1 if left
var _y_input = keyboard_check(vk_down)-keyboard_check(vk_up);
var _input_direction =  point_direction(0,0,_x_input, _y_input);// takes two points in space and returns a direction
show_debug_message("shit");
//get_direction_facing();

direction_facing_ = round(_input_direction/90)
if(direction_facing_==4){
	direction_facing_=0;	
}

if _x_input!=0 && !place_meeting(x+speed_ * _x_input,y,o_solid) {
	x+= speed_ * _x_input;
	image_speed = _animation_speed;
	image_xscale=_x_input;
}

if _y_input!=0 && !place_meeting(x,y+speed_ * _y_input,o_solid){
	y+=speed_ * _y_input;
//	direction_facing_ = _y_input==1 ? dir.down : dir.up; // if else shorthand like in java
//  value_to_be_set   =  comparison ? if_true  : if_false
	image_speed = _animation_speed;
}



sprite_index= sprite_[player.move, direction_facing_]