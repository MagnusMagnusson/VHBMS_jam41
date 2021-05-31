draw_self();
drawblood(x + 64,y - 40, name);
var s =  o_ctrl.stats[$stat]
var price = cost(s);
if(s < 5){
	drawblood(x + 64,y - 16, "$"+ string(price));
}

for(var i = 0; i < 5; i++){
	draw_sprite(sprite_index, s <= i ? 1:2, x + sprite_width * (i+1) + 5, y);
}

if(hovering){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 16, tooltip);
	draw_reset();
}