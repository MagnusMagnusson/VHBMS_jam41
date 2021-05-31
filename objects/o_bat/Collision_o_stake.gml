
instance_create_depth(x,y,depth, o_coin);
	if(!hit){
	if(other.vspeed < 0){
		other.vspeed--;
	} else{
		other.vspeed = -abs(other.vspeed);
	}
	
		audio_play_sound(snd_bat,1, false);
		hit = true;

}