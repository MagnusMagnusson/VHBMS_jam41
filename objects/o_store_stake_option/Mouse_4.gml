
if(o_ctrl.stats[$stake.key]){
	o_helsing.stake = stake;
} else{
	if(o_ctrl.gold >= price){
		o_ctrl.stats[$stake.key] = true;
		o_helsing.stake = stake;
		o_ctrl.gold -= price;
	}
}