draw_self();

if(lookcool > 0){
	lookcool--;
	for(var i = 0; i < 6; i++){
		draw_sprite_ext(sprite_index, image_index, x - lengthdir_x(15*(i+1), direction),y - lengthdir_y(15*(i+1), direction),1.25*image_xscale,1.25 * image_yscale, image_angle,c_white, 1 / (i + 2));
	}
}