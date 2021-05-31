var d = load("store.json")
if(!d){
	stats = {
		strength : 0,
		durability : 0,
		money_bonus : 0,
		bomb : 0,
	}
	for(var i = 0; i < global.stakes.size; i++){
		var stake = global.stakes.get(i);
		stats[$stake.key] = stake.def;
	}
} else{
	stats = d;
}

var t = load("records.json")

if(!t){
	longest_throw = 0;
	highest_throw = 0;
	gold = 0;
} else{
	longest_throw = t.long;
	highest_throw = t.high;
	gold = t.gold;
}

reset()