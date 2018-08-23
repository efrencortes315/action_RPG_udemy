/// @description Move state
image_speed = .2;
var _x_speed = lengthdir_x(speed_,direction_);
if (_x_speed != 0) {
	image_xscale= sign(_x_speed);
}
if (alarm[1]<=0){
	apply_friction_to_movement_entity();
} else{
	add_movement_maxspeed(direction_, 0.05,.5);
}
move_movement_entity(true);

if(speed_==0){
	alarm[1] = random_range(1,3)* game_get_speed(gamespeed_fps);
	state_ = porcupine.idle;
}