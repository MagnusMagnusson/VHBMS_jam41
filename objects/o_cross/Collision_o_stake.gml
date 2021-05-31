other.direction = 45;
other.speed = max(other.speed, 25);
other.y = min(other.y, 595)
if(!audio_is_playing(snd_choir)){
	audio_play_sound(snd_choir,0,0);
}