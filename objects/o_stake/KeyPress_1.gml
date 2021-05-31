if(!reserved_key_pressed()){
	if(bomb > 0){
		speed += 25;
		audio_play_sound(snd_bomb,0,0);
		lookcool = room_speed * 4;
		bomb--;
	}
}