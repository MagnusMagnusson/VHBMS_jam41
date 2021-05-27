if(IS_AIMING){
	angle += angleDir;
	if(angle > 90){
		angleDir = -angleDir;
		angle = 90;
	} else if(angle < -30){
		angleDir = -angleDir;
		angle = -30;
	}
}