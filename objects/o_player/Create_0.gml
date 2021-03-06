/// @description
initialize_movement_entity(.5,1,o_solid);
initialize_hurtbox_entity();
// You can write your code in this editor
image_speed=0; //stops animation from playing so character appears to be still
// speed=2; this would use the built in variable speed, set automatic movement to the right
acceleration_=0.5//the underscore makes it a new variable that we can use how we want

max_speed_ = 1.5
roll_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = 0;
enum player {
move,
sword,
roll,
bomb,
bow,
found_item,
hit
}
enum dir{
	right,
	up,
	left,
	down
}
starting_state_ = player.move;
state_ = player.move;
//now we create our sprite lookup table
sprite_[player.move,dir.right] = s_player_run_right;
sprite_[player.move,dir.up] = s_player_run_up;
sprite_[player.move,dir.left] = s_player_run_right;
sprite_[player.move,dir.down] = s_player_run_down;

sprite_[player.sword,dir.right]= s_player_attack_right;
sprite_[player.sword,dir.up]= s_player_attack_up;
sprite_[player.sword,dir.left]= s_player_attack_right;
sprite_[player.sword,dir.down]= s_player_attack_down;

sprite_[player.roll,dir.right] = s_player_roll_right;
sprite_[player.roll,dir.up] = s_player_roll_up;
sprite_[player.roll,dir.left] = s_player_roll_right;
sprite_[player.roll,dir.down] = s_player_roll_down;

sprite_[player.hit,dir.right] = s_player_run_right;
sprite_[player.hit,dir.up] = s_player_run_up;
sprite_[player.hit,dir.left] = s_player_run_right;
sprite_[player.hit,dir.down] = s_player_run_down;