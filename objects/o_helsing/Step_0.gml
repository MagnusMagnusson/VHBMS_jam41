if(IS_AIMING){
	angle += angleDir;
	if(angle > 90){
		angleDir = -angleDir;
		angle = 90;
	} else if(angle < -30){
		angleDir = -angleDir;
		angle = -30;
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