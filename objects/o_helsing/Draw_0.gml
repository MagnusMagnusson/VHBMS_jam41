
if(IS_AIMING || IS_THROWING){
	var _x, _y, scale, len;
	len = 45;
	_x = x + lengthdir_x(len,angle);
	_y = y + lengthdir_y(len,angle);
	scale = 0.5;
	var circleScale = 64+32;
	surf_power_gage = get_circlemeter(surf_power_gage,force/max_force, 64,c_red,c_lime);
	
	draw_surface(surf_power_gage,x,y);
	draw_sprite_ext(stake.sprite, 0, _x, _y, scale, scale, angle, c_white, 1);
}
draw_self()
