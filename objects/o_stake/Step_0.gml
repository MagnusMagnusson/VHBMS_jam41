if(speed > 1){
	image_angle = direction
} else{
	image_angle = forcedDirection;
}

if(active){
	var cam = view_camera[0];
	var camw, camh;
	camw = camera_get_view_width(cam);
	camh = camera_get_view_height(cam);

	camera_set_view_pos(cam,x - camw /2,min(-5, y - camh / 2));

	if(y > 600){
		vspeed = -vspeed;
		speed = speed * stake.bounce;
		y = 600;
		if(speed < 3){
			speed = 0;
			gravity = 0;
			active = false;
			if(stake.key == "stake_glass"){
				image_alpha = 0;
			}
			fail();
		}
	}
}