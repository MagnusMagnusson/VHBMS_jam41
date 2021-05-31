draw_set_color(c_white);
if instance_exists(o_stake){
	var m = ( o_stake.x - o_stake.xstart) PX_TO_METER;
	var h = (600 - o_stake.y) PX_TO_METER;
	longest_throw = max(m, longest_throw)
	var lt = longest_throw;
	draw_text(8,35,string(m)+" / "+ string(lt) + " METERS");
	draw_text(8,35+32,string(h)+" / "+ string(highest_throw) + " METERS");
} else{
		draw_text(8,35,"distance: " + string(0)+" / "+ string(longest_throw) + " METERS");
	draw_text(8,32+35, "height: " + string(0)+" / "+ string(highest_throw) + " METERS");
}


draw_text(8,35+64,string(floor(gold)) + " Gold");