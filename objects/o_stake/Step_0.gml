if(speed > 1){
	image_angle = direction
} else{
	image_angle = forcedDirection;
}

if(active){
	var dx,dy;
	dx = hspeed;
	dy = vspeed;
	o_ctrl.gold += (sqrt(dx*dx + dy*dy)/250) * stake.moneyBonus * power(1.15,o_ctrl.stats.money_bonus);
	
	if(spawnCoins > 0){
		spawnCoins -= 3;
		instance_create_depth(x,y,depth-1,o_coin);
		instance_create_depth(x,y,depth-1,o_coin);
		instance_create_depth(x,y,depth-1,o_coin);
	}
	
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