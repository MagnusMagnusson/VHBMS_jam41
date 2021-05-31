
if(o_ctrl.stats[$stake.key]){
	o_helsing.stake = stake;
} else{
	if(o_ctrl.gold >= price){
		o_ctrl.stats[$stake.key] = true;
		o_helsing.stake = stake;
		o_ctrl.gold -= price;
		save("store.json", o_ctrl.stats);
		save("records.json", {
			long : o_ctrl.longest_throw,
			high : o_ctrl.highest_throw,
			gold : o_ctrl.gold,
		});
	}
}