image_xscale = 0.25;
image_yscale = 0.25;
hspeed = irandom_range(-5,5);
vspeed = irandom_range(-5,5);

if(o_stake.spawnCoins > 0){
	if(!audio_is_playing(snd_coin)){
		audio_play_sound(snd_coin, 0, 0);
	}
}

o_ctrl.gold += 1 * o_stake.stake.moneyBonus  * power(1.15,o_ctrl.stats.money_bonus);