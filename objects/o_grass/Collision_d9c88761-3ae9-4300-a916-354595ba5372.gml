if(hurtbox_entity_can_be_hit_by(other)){
	//instance_create_depth(x,y,depth,o_animation_effect);
	// ^ this line was me experimenting, but it actually allows the destruct animation to player, albeit incorrectly
	create_animation_effect(s_grass_effect,x,y,.5,true);
	instance_destroy();
}