var s =  o_ctrl.stats[$stat]
var price = cost(s)
if(o_ctrl.gold >= price && s < 5){
	o_ctrl.stats[$stat]++;
	o_ctrl.gold -= price;
	save("store.json", o_ctrl.stats);
	save("records.json", {
		long : o_ctrl.longest_throw,
		high : o_ctrl.highest_throw,
		gold : o_ctrl.gold,
	});
}