gold = 0;

stats = {
	strength : 0,
	durability : 0,
	money_bonus : 0,
}

for(var i = 0; i < global.stakes.size; i++){
	var stake = global.stakes.get(i);
	stats[$stake.key] = stake.def;
}

reset()