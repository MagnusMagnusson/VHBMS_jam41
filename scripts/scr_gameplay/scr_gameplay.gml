function fail(){
	instance_create_layer(o_stake.x, room_height / 8, layer_get_id("il_ui"), o_you_missed);
		save("records.json", {
		long : o_ctrl.longest_throw,
		high : o_ctrl.highest_throw,
		gold : o_ctrl.gold,
	})
}

function createStuff(x0, x1){
	with(all){
		if(asset_has_tags(object_index, "stuff", asset_object)){
			instance_destroy();
		}
	}
	
	for(var i = x0 + CHEST_DISTANCE; i < x1; i += CHEST_DISTANCE){
			instance_create_depth((i + irandom(3)) METER_TO_PX , 480, depth, o_chest);
	}
	for(var i = x0 + VAMPIRE_DISTANCE; i < x1; i += VAMPIRE_DISTANCE){
			instance_create_depth((i + irandom(3)) METER_TO_PX , 480, depth, o_vampire);
	}
	for(var i = x0 + GHOST_DISTANCE; i < x1; i += GHOST_DISTANCE){
			instance_create_depth((i + irandom(3)) METER_TO_PX ,  -40 - irandom_range(-5,45), depth, o_ghost);
	}
	for(var i = x0 + CROSS_DISTANCE; i < x1; i += CROSS_DISTANCE){
			var s = instance_create_depth(i METER_TO_PX ,  550, depth, o_cross);
			s.image_xscale = 1.25;
			s.image_yscale = 1.25;
	}	
	for(var i = x0 + WATER_DISTANCE; i < x1; i += WATER_DISTANCE){
			var w = instance_create_depth((i + irandom(3)) METER_TO_PX ,  600, depth, o_water);
			w.image_xscale = 4;
			w.image_yscale = 4;
	}	
	for(var i = x0 + BAT_DISTANCE; i < x1; i += BAT_DISTANCE){
			var w = instance_create_depth((i + irandom(3)) METER_TO_PX ,  -100 + random_range(-100,450), depth, o_bat);

	}
}



function reset(){
	createStuff(11,10000);
	close_shop();
	with(o_helsing){
		SET_STATE_TO STATE_AIMING;
		instance_destroy(o_stake);
		force = 0;
		angle = 0;
	}
	with(o_you_missed){
		with(o_button){
			if(attach == other.id){
				instance_destroy(id);
				attach = noone;
			}
		}
		instance_destroy(id);
	}
}

function open_shop(){
	instance_destroy(o_stake);
	layer_set_visible(layer_get_id("il_store"), true);
	with(o_helsing){
		SET_STATE_TO STATE_FLYING;
	}
}

function close_shop(){
}

function to_menu(){
}