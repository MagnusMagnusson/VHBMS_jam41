var m = stake.durability + o_ctrl.stats.durability;
if(life <= m && m < 6){
	for(var i = 0; i < m; i++){
		var is_black = i >= life;
		draw_sprite_ext(sprite_index,0,room_width - 1.1*sprite_width * image_xscale * i - sprite_width, sprite_height * image_yscale + 10,image_xscale, image_yscale, -90, is_black ? c_black : c_white, is_black ? 0.75: 1);
	}
} else{
	draw_sprite_ext(sprite_index,0,room_width - 1.1*sprite_width * image_xscale - sprite_width, sprite_height * image_yscale + 10,image_xscale, image_yscale, -90,c_white, 1);
}