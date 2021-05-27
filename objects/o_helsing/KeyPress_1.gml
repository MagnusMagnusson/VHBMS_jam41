if(!reserved_key_pressed()){
	if(IS_AIMING){
		SET_STATE_TO STATE_THROWING;
	} else if(IS_THROWING){
		SET_STATE_TO STATE_FLYING;
		var len, _x, _y;
			len = 64;
			_x = x + lengthdir_x(len,angle);
			_y = y + lengthdir_y(len,angle);
	
		var s = instance_create_depth(_x,_y,0,o_stake);
		
		
		s.stake = stake;
		s.sprite_index = s.stake.sprite;
		s.direction = angle;
		s.speed = force / stake.weight;
	}
}