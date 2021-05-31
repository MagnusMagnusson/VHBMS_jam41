if(IS_AIMING){
	angle += angleDir;
	if(angle > 90){
		angleDir = -angleDir;
		angle = 90;
		audio_play_sound(snd_click,1,false);
	} else if(angle < -30){
		angleDir = -angleDir;
		angle = -30;
		audio_play_sound(snd_click,1,false);
	}
} else if(IS_THROWING){
	force += force_direction;
	if(force > max_force){
		force = max_force;
		force_direction = -force_direction;
	} else if (force < 0){
		force = 0; 
		force_direction = -force_direction;
	}
}