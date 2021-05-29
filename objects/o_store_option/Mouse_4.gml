var s =  o_ctrl.stats[$stat]
var price = cost(s)
if(o_ctrl.gold >= price && s < 5){
	o_ctrl.stats[$stat]++;
	o_ctrl.gold -= price;
}