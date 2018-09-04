/// @description attack state

image_speed= 0.8 //speeds up animation
if(animation_hit_frame(1)){
	var _angle = direction_facing_ * 90;
	var _life = 3
	var _damage = 1;
	var _knockback = 8;
	var _hitbox = create_hitbox(s_sword_hitbox,x,y,_angle,_life,[o_porcupine],_damage,_knockback);
	
	switch direction_facing_ { //GM2 switch statement, realignts the created hitbox better with the players position based on the direction he faces
		case dir.up: _hitbox.y-=4; break;
		default: _hitbox.y-=8;break;
	}
}

if(animation_hit_frame(image_number-1)){
state_=player.move;	
}