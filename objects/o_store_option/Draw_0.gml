draw_self();
drawblood(x + 64,y - 40, name);
var s =  o_ctrl.stats[$stat]
var price = cost(s);
drawblood(x + 64,y - 16, "$"+ string(price));

for(var i = 0; i < 5; i++){
	draw_sprite(sprite_index, s <= i ? 1:2, x + sprite_width * (i+1) + 5, y);
}