
drawblood(x + 50,y - 40, stake.name);
var unlocked = o_ctrl.stats[$stake.key];
var selected = o_helsing.stake.key == stake.key;

drawblood(x + 32,y - 16, unlocked ? (selected ? "SELECTED" : "OWNED")  :  "$"+ string(price));
draw_sprite_ext(stake.sprite, 0, x+40, y+16, 0.5, 0.5,0, unlocked ? c_white : c_black, selected ? 1 : 0.75);

if(hovering){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 16, stake.desc);
	draw_reset();
}