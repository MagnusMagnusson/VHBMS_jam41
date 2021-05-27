if(!reserved_key_pressed()){
	if(IS_AIMING){
		SET_STATE_TO STATE_THROWING;
	} else if(IS_THROWING){
		SET_STATE_TO STATE_FLYING;
		var s = instance_create_depth(x,y,0,o_stake);
		s.stake = stake;
		s.direction = angle;
		s.speed = force / stake.weight;
	}
}