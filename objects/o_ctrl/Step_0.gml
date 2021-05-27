if(!instance_exists(o_stake)){
	var cam = view_camera[0];
	var camx = camera_get_view_x(cam);
	if(camx > 0){
		if(camx < 20){
			camera_set_view_pos(cam,0,-5);
		} else{
			camera_set_view_pos(cam,camx * 0.8,-5);
		}
	}
}