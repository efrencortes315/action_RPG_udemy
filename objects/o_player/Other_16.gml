/// @description Hit State

image_index = 0;
move_movement_entity(true);
apply_friction_to_movement_entity();

if speed_ == 0 {
	state_= starting_state_;//when you stop moving from being knocked back, you can regain control	
	
}