if(speed > 1)
	image_angle = direction
} else{
	image_angle = forcedDirection;
}

var cam = view_camera[0];
var camw, camh;
camw = camera_get_view_width(cam);
camh = camera_get_view_height(cam);

camera_set_view_pos(cam,x - camw /2,y - camh / 2);

if(y > 600){
	vspeed = -vspeed;
	speed = speed * stake.bounce;
	y = 600;
	if(speed < 5){
		speed = 0;
	}
}