draw_set_color(c_white);
if instance_exists(o_stake){
	var m = ( o_stake.x - o_stake.xstart) PX_TO_METER;
	if (m > 1000){
		draw_text(0,0,string((m/1000))+" KILOMETERS");
	}else{
		draw_text(0,0,string(m)+" METERS");
	}
} else{
	draw_text(0,0,"0 Meters");

}