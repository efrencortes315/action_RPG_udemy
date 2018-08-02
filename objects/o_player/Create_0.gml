/// @description
initialize_movement_entity(.5,1,o_solid);

// You can write your code in this editor
image_speed=0; //stops animation from playing so character appears to be still
// speed=2; this would use the built in variable speed, set automatic movement to the right
acceleration_=0.5//the underscore makes it a new variable that we can use how we want
max_speed_ = 1.5
global.player_health = 4;	//red means global variable, which is available all throughout the program, anything has access
direction_facing_ = dir.right;

enum player {
move
}
enum dir{
	right,
	up,
	left,
	down
}
sprite_[player.move,dir.right] = s_player_run_right;
sprite_[player.move,dir.up] = s_player_run_up;
sprite_[player.move,dir.left] = s_player_run_right;
sprite_[player.move,dir.down] = s_player_run_down;