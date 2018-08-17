initialize_movement_entity(1,.5,o_solid);//because although the player does not control enemies, they will move

image_speed=0;
max_health_ = 2;
health_ = max_health_;

starting_state_ = noone;
state_ = starting_state_;

enum enemy {
	hit
}