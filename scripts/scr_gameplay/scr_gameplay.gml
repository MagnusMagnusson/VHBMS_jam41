function fail(){
	instance_create_layer(o_stake.x, room_height / 8, layer_get_id("il_ui"), o_you_missed);
}

function reset(){
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
}

function close_shop(){
}

function to_menu(){
}