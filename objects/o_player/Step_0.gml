event_user(state_); // state_ will be 0, running event zero, because enumerated values start at 0 and go up by one
sprite_index= sprite_[state_, direction_facing_];
depth=-y;

if(global.player_health<0 && !invincible_){
	instance_destroy();
}