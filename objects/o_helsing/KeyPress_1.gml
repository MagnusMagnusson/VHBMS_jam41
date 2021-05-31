if(!reserved_key_pressed()){
	if(IS_AIMING){
		SET_STATE_TO STATE_THROWING;
		audio_play_sound(snd_whoop, 1, false);
	} else if(IS_THROWING){
		SET_STATE_TO STATE_FLYING;
		audio_play_sound(snd_whoosh, 1, false);
		var len, _x, _y;
			len = 64;
			_x = x + lengthdir_x(len,angle);
			_y = y + lengthdir_y(len,angle);
	
		var s = instance_create_depth(_x,_y,0,o_stake);
		
		
		setStake(s, stake);
		s.life += o_ctrl.stats.durability;
		s.bomb = o_ctrl.stats.bomb;
		s.direction = angle;
		s.speed = (power(1.2, o_ctrl.stats.strength) * force) / stake.weight;
	}
}