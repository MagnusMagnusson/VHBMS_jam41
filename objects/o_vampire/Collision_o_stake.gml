if(other.speed > 5){
	if(active){
		audio_play_sound(snd_vampire,1, false);
		other.life--;
		other.speed *= other.stake.slowdown;
		if(other.life <= 0){
			other.speed = 0;
		}
		
		direction = irandom(360);
		speed = 20;
		alarm[0] = room_speed * 5;
		active = false;
		for(var i = 0; i < 25; i++){
			instance_create_depth(x,y,depth, o_coin);
		}
	}
} else{
	other.hspeed = 0
}