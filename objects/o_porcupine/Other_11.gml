/// @description Idle state
image_index = 0;

if (alarm[1]<=0){
	alarm[1]= random_range(2,4) * game_get_speed(gamespeed_fps);
	state_ = porcupine.move;
	direction_ = random(360);
	
}
