draw_self()
if(IS_AIMING || IS_THROWING){
	var _x, _y, scale, len;
	len = 45;
	_x = x + lengthdir_x(len,angle);
	_y = y + lengthdir_y(len,angle);
	scale = 0.5;
	
	draw_sprite_ext(stake.sprite, 0, _x, _y, scale, scale, angle, c_white, 1);
}