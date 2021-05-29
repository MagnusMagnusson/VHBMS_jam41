if(other.speed > 10){
	if(active){
		if(other.vspeed > 0){
			other.vspeed = -other.vspeed;
		}
		other.vspeed -= 15 / other.stake.weight;;
		other.hspeed += 15 / other.stake.weight;
		other.spawnCoins = 500;
		active = false;
	}
} else{
	if(active){
		other.hspeed *= -1;	
		active =false;
	}
}