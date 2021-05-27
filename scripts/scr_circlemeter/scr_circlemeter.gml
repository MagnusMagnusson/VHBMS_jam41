function get_circlemeter(surf, perc,r, c1, c2){
	if(!surface_exists(surf)){
		surf = surface_create(2*r,2*r);
	}
	surface_set_target(surf);
	draw_clear_alpha(c_white,0);
	
	var precision = 100;
	
	draw_primitive_begin(pr_trianglefan);
	draw_vertex_color(r,r,c1,1);
	var top, inc;
	top = 360 * perc;
	inc = 360 / precision;
	for(var i = 0; i <= top; i += inc){
		var c = merge_color(c1,c2,i/360);
		var yy,xx;
		yy = r + lengthdir_y(r,i);
		xx = r + lengthdir_x(r,i);
		
		draw_vertex_color(xx,yy,c,1);
	}
	
	draw_primitive_end();
	surface_reset_target();
	return surf;
}