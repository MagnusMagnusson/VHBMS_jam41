if instance_exists(o_stake){
	var m = o_stake.x PX_TO_METER;
	if(m < 0){
		draw_text(0,0,string(m*100)+" CENTIMETERS");
	} else if (m > 10000){
		draw_text(0,0,string((m/1000))+" KILOMETERS");
	}else{
		draw_text(0,0,string(m)+" METERS");
	}
} else{
	draw_text(0,0,"0 CENTIMETERS");
}