function drawblood(_x,_y, text){
	draw_set_color(C_BLOOD);
	draw_set_font(dyslexic_13);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(_x,_y,text);
	draw_set_color(c_red);
	draw_text(_x-1,_y-1,text);
	draw_reset();
}

function draw_reset(){
	draw_set_color(0);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}