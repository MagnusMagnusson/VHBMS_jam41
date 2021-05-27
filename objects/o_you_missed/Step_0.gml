if(y > ystart){
	if(bounced){
		gravity = 0;
		vspeed = 0;
	} else{
		vspeed = -13;
		bounced = true;
	}
}